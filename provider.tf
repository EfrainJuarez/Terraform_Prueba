terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 2.9.0"
    }
  }
}

variable "grafana_stack_url" {
  description = "The URL of the Grafana stack"
  type        = string
  default     = "https://bcpdesa.grafana.net"
}

provider "grafana" {
  alias = "cloud"
  url   = var.grafana_stack_url
  auth  = "glsa_DLF3ehKTFRhYgt3etYZCNyikGoD4ll5e_b5c196c7"
}

# Define the list of folders you want to create in Grafana
variable "folders" {
  description = "List of folders to create in Grafana"
  type        = list(string)
  default     = ["MCOB"]
}


# Define the list of dashboard types to create in Grafana
variable "dashboard_types" {
  description = "List of dashboard types to create in Grafana"
  type        = list(object({
    name     = string
    template = string
  }))
  default = [
    {
      name     = "Infrastructure"
      template = "templates/infrastructure_template.json.tpl"
    },
    {
      name     = "Service List"
      template = "templates/service_list_template.json.tpl"
    },
    {
      name     = "Service"
      template = "templates/service_template.json.tpl"
    },
    {
      name     = "Overview"
      template = "templates/service_component/overview_template.json.tpl"
    },
    {
      name     = "Traces"
      template = "templates/service_component/traces_template.json.tpl"
    },
    {
      name     = "Logs"
      template = "templates/service_component/logs_template.json.tpl"
    },
    {
      name     = "Service Map"
      template = "templates/service_component/service-map_template.json.tpl"
    },
    {
      name     = "JVM"
      template = "templates/service_component/jvm_template.json.tpl"
    },
    {
      name     = "Errors"
      template = "templates/service_component/errors_template.json.tpl"
    },
    {
      name     = "Downstream & databases details"
      template = "templates/service_component/downstream_template.json.tpl"
    },
    {
      name     = "Operations details"
      template = "templates/service_component/operation_template.json.tpl"
    },
  ]
}

# Read the JSON file generated by the Python script with existing folders
data "local_file" "folders_json" {
  filename = "${path.module}/folders.json"
}

# Decode the contents of the JSON file and create the map of existing folders
locals {
  existing_folders = jsondecode(data.local_file.folders_json.content)
  
  existing_folder_map = {
    for f in local.existing_folders : f.title => f.uid if contains(var.folders, f.title)
  }

  # Define dashboard configurations for existing folders
  dashboard_config_existing = flatten([
    for folder_name, folder_uid in local.existing_folder_map : [
      for type in var.dashboard_types : {
        folder_name    = folder_name
        dashboard_name = "${type.name} ${folder_name}"
        template       = type.template
        datasource     = lower(folder_name)  # Convertir el nombre de la carpeta a minúsculas
      }
    ]
  ])

  # Ensure that folders_to_create only includes folders that are not in existing_folder_map
  folders_to_create = [for f in var.folders : f if !contains(keys(local.existing_folder_map), f)]

  # Define dashboard configurations for folders that need to be created
  dashboard_config_to_create = flatten([
    for folder_name in local.folders_to_create : [
      for type in var.dashboard_types : {
        folder_name    = folder_name
        dashboard_name = "${type.name} ${folder_name}"
        template       = type.template
        datasource     = lower(folder_name)  # Convertir el nombre de la carpeta a minúsculas
      }
    ]
  ])

  # Combine all dashboard configurations
  dashboard_config_all = concat(local.dashboard_config_existing, local.dashboard_config_to_create)
}


locals {
  # Mapa combinado de carpetas existentes y carpetas a crear
  combined_folders = merge( 
    local.existing_folder_map,
    {
      for name, folder in grafana_folder.folders_to_create :
      name => folder.uid
    }
  )
}


# Create folders in Grafana that need to be created
resource "grafana_folder" "folders_to_create" {
  provider = grafana.cloud
  
  for_each = {
    for folder_name in local.folders_to_create :
    folder_name => {
      title = folder_name
    }
  }

  title = each.value.title
}

resource "grafana_folder" "subfolder_combined" {
  provider = grafana.cloud

  for_each = local.combined_folders

  title             = "Service Components"
  parent_folder_uid = each.value

  lifecycle {
    prevent_destroy = true
  }
}

resource "grafana_dashboard" "infraestructure_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Infraestructura" => {
      folder_name    = folder
      dashboard_title = "Infraestructura ${folder}"
      template       = "templates/infra_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}infraestructure"
    }
  }

  folder = try(
    local.existing_folder_map[each.value.folder_name],
    grafana_folder.folders_to_create[each.value.folder_name].id
  )

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_title,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
  })
}


resource "grafana_dashboard" "service_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Service" => {
      folder_name    = folder
      dashboard_title = "Service ${folder}"
      template       = "templates/servicios_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}servicios"
    }
  }

  folder = try(
    local.existing_folder_map[each.value.folder_name],
    grafana_folder.folders_to_create[each.value.folder_name].id
  )

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_title,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    folder                 = each.value.folder_name
  })
}

resource "grafana_dashboard" "service_list_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Service List" => {
      folder_name              = folder
      dashboard_name           = "Service List ${folder}"
      template                 = "templates/service_list_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}servicelist"
      overview_uid             = "${lower(folder)}over"
      overview_name            = "${lower(folder)}-overview"
    }
  }

  folder = try(
    local.existing_folder_map[each.value.folder_name],
    grafana_folder.folders_to_create[each.value.folder_name].id
  )

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,   # sirve?
    overview_dashboard_uid     = each.value.overview_uid,
    overview_dashboard_name    = each.value.overview_name
  })
}

# Service component
resource "grafana_dashboard" "overview_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Overview" => {
      folder_name              = folder
      dashboard_name           = "Overview ${folder}"
      template                 = "templates/service_component/overview_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}over"
      traces_uid               = "${lower(folder)}traces"
      traces_name              = "${lower(folder)}-traces"
      logs_uid                 = "${lower(folder)}logs"
      logs_name                = "${lower(folder)}-logs"
      servicemap_uid           = "${lower(folder)}servicemap"
      servicemap_name          = "service-map-${lower(folder)}"
      jvm_uid                  = "${lower(folder)}jvm"
      jvm_name                 = "${lower(folder)}-jvm"
      errors_uid               = "${lower(folder)}errors"
      errors_name              = "${lower(folder)}-errors"
      downstream_uid           = "${lower(folder)}downstream"
      downstream_name          = "${lower(folder)}-downstream-and-databases-details"
      operation_uid            = "${lower(folder)}operation"
      operation_name           = "${lower(folder)}-operations-details"
      overview_name            = "${folder}-overview"

    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,
    traces_dashboard_uid       = each.value.traces_uid,
    traces_dashboard_name      = each.value.traces_name,
    logs_dashboard_uid         = each.value.logs_uid,
    logs_dashboard_name        = each.value.logs_name,
    servicemap_dashboard_uid   = each.value.servicemap_uid,
    servicemap_dashboard_name  = each.value.servicemap_name,
    jvm_dashboard_uid          = each.value.jvm_uid,
    jvm_dashboard_name         = each.value.jvm_name,
    errors_dashboard_uid       = each.value.errors_uid,
    errors_dashboard_name      = each.value.errors_name,
    downstream_dashboard_uid   = each.value.downstream_uid,
    downstream_dashboard_name  = each.value.downstream_name,
    operation_dashboard_uid    = each.value.operation_uid,
    operation_dashboard_name   = each.value.operation_name
    overview_dashboard_name    = each.value.overview_name
    grafana_url                = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "traces_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Traces" => {
      folder_name              = folder
      dashboard_name           = "Traces ${folder}"
      template                 = "templates/service_component/traces_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}traces"
      overview_uid             = "${lower(folder)}over"
      overview_name            = "${lower(folder)}-overview"
      logs_uid                 = "${lower(folder)}logs"
      logs_name                = "${lower(folder)}-logs"
      servicemap_uid           = "${lower(folder)}servicemap"
      servicemap_name          = "service-map-${lower(folder)}"
      jvm_uid                  = "${lower(folder)}jvm"
      jvm_name                 = "${lower(folder)}-jvm"
      errors_uid               = "${lower(folder)}errors"
      errors_name              = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,
    overview_dashboard_uid     = each.value.overview_uid,
    overview_dashboard_name    = each.value.overview_name,
    logs_dashboard_uid         = each.value.logs_uid,
    logs_dashboard_name        = each.value.logs_name,
    servicemap_dashboard_uid   = each.value.servicemap_uid,
    servicemap_dashboard_name  = each.value.servicemap_name,
    jvm_dashboard_uid          = each.value.jvm_uid,
    jvm_dashboard_name         = each.value.jvm_name,
    errors_dashboard_uid       = each.value.errors_uid,
    errors_dashboard_name      = each.value.errors_name
    grafana_url                = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "logs_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Logs" => {
      folder_name      = folder
      dashboard_name   = "Logs ${folder}"
      template         = "templates/service_component/logs_template.json.tpl"
      datasource       = lower(folder)
      uid              = "${lower(folder)}logs"
      overview_uid     = "${lower(folder)}over"
      overview_name    = "${lower(folder)}-overview"
      traces_uid       = "${lower(folder)}traces"
      traces_name      = "${lower(folder)}-traces"
      servicemap_uid   = "${lower(folder)}servicemap"
      servicemap_name  = "service-map-${lower(folder)}"
      jvm_uid          = "${lower(folder)}jvm"
      jvm_name         = "${lower(folder)}-jvm"
      errors_uid       = "${lower(folder)}errors"
      errors_name      = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,
    overview_dashboard_uid     = each.value.overview_uid,
    overview_dashboard_name    = each.value.overview_name,
    traces_dashboard_uid       = each.value.traces_uid,
    traces_dashboard_name      = each.value.traces_name,
    servicemap_dashboard_uid   = each.value.servicemap_uid,
    servicemap_dashboard_name  = each.value.servicemap_name,
    jvm_dashboard_uid          = each.value.jvm_uid,
    jvm_dashboard_name         = each.value.jvm_name,
    errors_dashboard_uid       = each.value.errors_uid,
    errors_dashboard_name      = each.value.errors_name
    grafana_url                = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "service_map_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Service Map" => {
      folder_name              = folder
      dashboard_name           = "Service Map ${folder}"
      template                 = "templates/service_component/service-map_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}servicemap"
      overview_uid             = "${lower(folder)}over"
      overview_name            = "${lower(folder)}-overview"
      traces_uid               = "${lower(folder)}traces"
      traces_name              = "${lower(folder)}-traces"
      logs_uid                 = "${lower(folder)}logs"
      logs_name                = "${lower(folder)}-logs"
      jvm_uid                  = "${lower(folder)}jvm"
      jvm_name                 = "${lower(folder)}-jvm"
      errors_uid               = "${lower(folder)}errors"
      errors_name              = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,
    overview_dashboard_uid     = each.value.overview_uid,
    overview_dashboard_name    = each.value.overview_name,
    traces_dashboard_uid       = each.value.traces_uid,
    traces_dashboard_name      = each.value.traces_name,
    logs_dashboard_uid         = each.value.logs_uid,
    logs_dashboard_name        = each.value.logs_name,
    jvm_dashboard_uid          = each.value.jvm_uid,
    jvm_dashboard_name         = each.value.jvm_name,
    errors_dashboard_uid       = each.value.errors_uid,
    errors_dashboard_name      = each.value.errors_name,
    grafana_url                = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "jvm_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-JVM" => {
      folder_name               = folder
      dashboard_name            = "JVM ${folder}"
      template                  = "templates/service_component/jvm_template.json.tpl"
      datasource                = lower(folder)
      uid                       = "${lower(folder)}jvm"
      overview_uid              = "${lower(folder)}over"
      overview_name             = "${lower(folder)}-overview"
      traces_uid                = "${lower(folder)}traces"
      traces_name               = "${lower(folder)}-traces"
      logs_uid                  = "${lower(folder)}logs"
      logs_name                 = "${lower(folder)}-logs"
      servicemap_uid            = "${lower(folder)}servicemap"
      servicemap_name           = "service-map-${lower(folder)}"
      errors_uid                = "${lower(folder)}errors"
      errors_name               = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title             = each.value.dashboard_name,
    datasource                  = each.value.datasource,
    uid                         = each.value.uid,
    overview_dashboard_uid      = each.value.overview_uid,
    overview_dashboard_name     = each.value.overview_name,
    traces_dashboard_uid        = each.value.traces_uid,
    traces_dashboard_name       = each.value.traces_name,
    logs_dashboard_uid          = each.value.logs_uid,
    logs_dashboard_name         = each.value.logs_name,
    servicemap_dashboard_uid    = each.value.servicemap_uid,
    servicemap_dashboard_name   = each.value.servicemap_name,
    errors_dashboard_uid        = each.value.errors_uid,
    errors_dashboard_name       = each.value.errors_name,
    grafana_url                 = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "errors_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Errors" => {
      folder_name              = folder
      dashboard_name           = "Errors ${folder}"
      template                 = "templates/service_component/errors_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}errors"
      overview_uid             = "${lower(folder)}over"
      overview_name            = "${lower(folder)}-overview"
      traces_uid               = "${lower(folder)}traces"
      traces_name              = "${lower(folder)}-traces"
      logs_uid                 = "${lower(folder)}logs"
      logs_name                = "${lower(folder)}-logs"
      servicemap_uid           = "${lower(folder)}servicemap"
      servicemap_name          = "service-map-${lower(folder)}"
      jvm_uid                  = "${lower(folder)}jvm"
      jvm_name                 = "${lower(folder)}-jvm"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,
    overview_dashboard_uid     = each.value.overview_uid,
    overview_dashboard_name    = each.value.overview_name,
    traces_dashboard_uid       = each.value.traces_uid,
    traces_dashboard_name      = each.value.traces_name,
    logs_dashboard_uid         = each.value.logs_uid,
    logs_dashboard_name        = each.value.logs_name,
    servicemap_dashboard_uid   = each.value.servicemap_uid,
    servicemap_dashboard_name  = each.value.servicemap_name,
    jvm_dashboard_uid          = each.value.jvm_uid,
    jvm_dashboard_name         = each.value.jvm_name,
    grafana_url                = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "downstream_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Downstream & databases details" => {
      folder_name              = folder
      dashboard_name           = "Downstream & databases details ${folder}"
      template                 = "templates/service_component/downstream_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}downstream"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid
  })
}

resource "grafana_dashboard" "operation_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Operations details" => {
      folder_name              = folder
      dashboard_name           = "Operations details ${folder}"
      template                 = "templates/service_component/operation_template.json.tpl"
      datasource               = lower(folder)
      uid                      = "${lower(folder)}operation"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid
  })
}