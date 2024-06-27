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
  default     = ""
}

provider "grafana" {
  alias = "cloud"
  url  = var.grafana_stack_url
  #auth
}


variable "folders" {
  description = "List of folders to create in Grafana"
  type        = list(string)
  default     = ["DIWA"]
}



variable "dashboard_types" {
  description = "List of dashboard types to create in Grafana"
  type        = list(object({
    name     = string
    template = string
  }))
  default = [
    {
      name     = "Infraestructura"
      template = "templates/infra_template.json.tpl"
    },
    {
      name     = "Servicios"
      template = "templates/servicios_template.json.tpl"
    },
    {
      name     = "Overview"
      template = "templates/overview_template.json.tpl"
    },
    {
      name     = "Traces"
      template = "traces_template.json.tpl"
    },
    {
      name     = "Logs"
      template = "logs_template.json.tpl"
    },
    {
      name     = "Service Map"
      template = "service-map_template.json.tpl"
    },
    {
      name     = "JVM"
      template = "JVM_template.json.tpl"
    },
    {
      name = "Service List"
      template= "service_list_template.json.tpl"
    },
    {
      name     = "Errors"
      template = "erros_template.json.tpl"
    },
    {name = "Downstream & databases details"
    template= "downstream_template.json.tpl"
    },
    {name = "Operations details"
    template= "operation_template.json.tpl"
    },
  ]
}


data "local_file" "folders_json" {
  filename = "${path.module}/folders.json"
}


locals {
  existing_folders = jsondecode(data.local_file.folders_json.content)
  
  existing_folder_map = {
    for f in local.existing_folders : 
    f.title => f.uid
    if contains(var.folders, f.title)
  }


  folders_to_create = [for f in var.folders : f if !contains(keys(local.existing_folder_map), f)]

  dashboard_config_existing = flatten([
    for folder_name, folder_uid in local.existing_folder_map : [
      for type in var.dashboard_types : {
        folder_name    = folder_name
        dashboard_name = "${type.name} ${folder_name}"
        template       = type.template
        datasource     = lower(folder_name) 
      }
    ]
  ])


  dashboard_config_to_create = flatten([
    for folder_name in local.folders_to_create : [
      for type in var.dashboard_types : {
        folder_name    = folder_name
        dashboard_name = "${type.name} ${folder_name}"
        template       = type.template
        datasource     = lower(folder_name) 
      }
    ]
  ])


  dashboard_config_all = concat(local.dashboard_config_existing, local.dashboard_config_to_create)
}


locals {

  combined_folders = merge(
    local.existing_folder_map,
    {
      for name, folder in grafana_folder.folders_to_create :
      name => folder.uid
    }
  )
}



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
# resource "grafana_folder" "subfolder" {
#   provider = grafana.cloud

#   for_each = {
#     for name, folder in grafana_folder.folders_to_create : name => folder
#   }
#   title             = "Service Components"
#   parent_folder_uid = each.value.uid

# }

# resource "grafana_folder" "subfolder_existing" {
#   provider = grafana.cloud

#   for_each = {
#     for name, uid in local.existing_folder_map : name => uid
#   }

#   title             = "Service Components"
#   parent_folder_uid = each.value


# }

resource "grafana_folder" "subfolder_combined" {
  provider = grafana.cloud

  for_each = local.combined_folders

  title             = "Service Components"
  parent_folder_uid = each.value

  lifecycle {
    prevent_destroy = true
  }
}




resource "grafana_dashboard" "dashboards_all" {
  provider = grafana.cloud

  depends_on = [grafana_folder.folders_to_create]

  for_each = {
    for cfg in local.dashboard_config_all :
    "${cfg.folder_name}-${cfg.dashboard_name}" => cfg if !can(regex("(Overview|Traces|Logs|Service Map|JVM|Errors|Service List|Downstream & databases details|Operations details)", cfg.dashboard_name))
  }

  folder = try(
    local.existing_folder_map[each.value.folder_name],
    grafana_folder.folders_to_create[each.value.folder_name].id
  )

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title = each.value.dashboard_name,
    datasource      = each.value.datasource
  }) 
}

resource "grafana_dashboard" "service_list_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Service List" => {
      folder_name    = folder
      dashboard_name = "Service List ${folder}"
      template       = "templates/service_list_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}servicelist"
      uid_overview   = "${lower(folder)}over"
      overview_name  = "${lower(folder)}-overview"
    }
  }

  folder = try(
    local.existing_folder_map[each.value.folder_name],
    grafana_folder.folders_to_create[each.value.folder_name].id
  )

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_name,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    uid_overview            = each.value.uid_overview,
    overview_name           = each.value.overview_name
  })
}

# Create overview dashboards in Grafana for each folder
resource "grafana_dashboard" "overview_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Overview" => {
      folder_name    = folder
      dashboard_name = "Overview ${folder}"
      template       = "templates/overview_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}over"
      uid_traces     = "${lower(folder)}traces"
      traces_name    = "${lower(folder)}-traces"
      uid_logs       = "${lower(folder)}logs"
      logs_name      = "${lower(folder)}-logs"
      uid_servicemap = "${lower(folder)}servicemap"
      servicemap_name = "service-map-${lower(folder)}"
      uid_jvm        = "${lower(folder)}jvm"
      jvm_name       = "${lower(folder)}-jvm"
      uid_errors     = "${lower(folder)}errors"
      errors_name    = "${lower(folder)}-errors"
      uid_downstream = "${lower(folder)}downstream"
      downstream_name = "${lower(folder)}-downstream-and-databases-details"
      uid_operation = "${lower(folder)}operation"
      operation_name = "${lower(folder)}-operations-details"
      overview_name  = "${folder}-overview"

    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title            = each.value.dashboard_name,
    datasource                 = each.value.datasource,
    uid                        = each.value.uid,
    traces_dashboard_uid       = each.value.uid_traces,
    traces_dashboard_name      = each.value.traces_name,
    logs_dashboard_uid         = each.value.uid_logs,
    logs_dashboard_name        = each.value.logs_name,
    servicemap_dashboard_uid   = each.value.uid_servicemap,
    servicemap_dashboard_name  = each.value.servicemap_name,
    jvm_dashboard_uid          = each.value.uid_jvm,
    jvm_dashboard_name         = each.value.jvm_name,
    errors_dashboard_uid       = each.value.uid_errors,
    errors_dashboard_name      = each.value.errors_name,
    downstream_dashboard_uid   = each.value.uid_downstream,
    downstream_dashboard_name  = each.value.downstream_name,
    operation_dashboard_uid    = each.value.uid_operation,
    operation_dashboard_name   = each.value.operation_name
    overview_name              = each.value.overview_name
    grafana_url   = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "traces_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Traces" => {
      folder_name    = folder
      dashboard_name = "Traces ${folder}"
      template       = "templates/traces_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}traces"
      uid_overview   = "${lower(folder)}over"
      overview_name  = "${lower(folder)}-overview"
      uid_logs       = "${lower(folder)}logs"
      logs_name      = "${lower(folder)}-logs"
      uid_servicemap = "${lower(folder)}servicemap"
      servicemap_name = "service-map-${lower(folder)}"
      uid_jvm        = "${lower(folder)}jvm"
      jvm_name       = "${lower(folder)}-jvm"
      uid_errors     = "${lower(folder)}errors"
      errors_name    = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_name,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    uid_overview            = each.value.uid_overview,
    overview_name           = each.value.overview_name,
    logs_dashboard_uid      = each.value.uid_logs,
    logs_dashboard_name     = each.value.logs_name,
    servicemap_dashboard_uid = each.value.uid_servicemap,
    servicemap_dashboard_name = each.value.servicemap_name,
    jvm_dashboard_uid       = each.value.uid_jvm,
    jvm_dashboard_name      = each.value.jvm_name,
    errors_dashboard_uid    = each.value.uid_errors,
    errors_dashboard_name   = each.value.errors_name
    grafana_url   = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "logs_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Logs" => {
      folder_name    = folder
      dashboard_name = "Logs ${folder}"
      template       = "templates/logs_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}logs"
      uid_overview   = "${lower(folder)}over"
      overview_name  = "${lower(folder)}-overview"
      uid_traces     = "${lower(folder)}traces"
      traces_name    = "${lower(folder)}-traces"
      uid_servicemap = "${lower(folder)}servicemap"
      servicemap_name = "service-map-${lower(folder)}"
      uid_jvm        = "${lower(folder)}jvm"
      jvm_name       = "${lower(folder)}-jvm"
      uid_errors     = "${lower(folder)}errors"
      errors_name    = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_name,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    uid_overview            = each.value.uid_overview,
    overview_name           = each.value.overview_name,
    traces_dashboard_uid    = each.value.uid_traces,
    traces_dashboard_name   = each.value.traces_name,
    servicemap_dashboard_uid = each.value.uid_servicemap,
    servicemap_dashboard_name = each.value.servicemap_name,
    jvm_dashboard_uid       = each.value.uid_jvm,
    jvm_dashboard_name      = each.value.jvm_name,
    errors_dashboard_uid    = each.value.uid_errors,
    errors_dashboard_name   = each.value.errors_name
    grafana_url   = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "service_map_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Service Map" => {
      folder_name    = folder
      dashboard_name = "Service Map ${folder}"
      template       = "templates/service-map_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}servicemap"
      uid_overview   = "${lower(folder)}over"
      overview_name  = "${lower(folder)}-overview"
      uid_traces     = "${lower(folder)}traces"
      traces_name    = "${lower(folder)}-traces"
      uid_logs       = "${lower(folder)}logs"
      logs_name      = "${lower(folder)}-logs"
      uid_jvm        = "${lower(folder)}jvm"
      jvm_name       = "${lower(folder)}-jvm"
      uid_errors     = "${lower(folder)}errors"
      errors_name    = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_name,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    uid_overview            = each.value.uid_overview,
    overview_name           = each.value.overview_name,
    traces_dashboard_uid    = each.value.uid_traces,
    traces_dashboard_name   = each.value.traces_name,
    logs_dashboard_uid      = each.value.uid_logs,
    logs_dashboard_name     = each.value.logs_name,
    jvm_dashboard_uid       = each.value.uid_jvm,
    jvm_dashboard_name      = each.value.jvm_name,
    errors_dashboard_uid    = each.value.uid_errors,
    errors_dashboard_name   = each.value.errors_name
    grafana_url   = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "jvm_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-JVM" => {
      folder_name    = folder
      dashboard_name = "JVM ${folder}"
      template       = "templates/jvm_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}jvm"
      uid_overview   = "${lower(folder)}over"
      overview_name  = "${lower(folder)}-overview"
      uid_traces     = "${lower(folder)}traces"
      traces_name    = "${lower(folder)}-traces"
      uid_logs       = "${lower(folder)}logs"
      logs_name      = "${lower(folder)}-logs"
      uid_servicemap = "${lower(folder)}servicemap"
      servicemap_name = "service-map-${lower(folder)}"
      uid_errors     = "${lower(folder)}errors"
      errors_name    = "${lower(folder)}-errors"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_name,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    uid_overview            = each.value.uid_overview,
    overview_name           = each.value.overview_name,
    traces_dashboard_uid    = each.value.uid_traces,
    traces_dashboard_name   = each.value.traces_name,
    logs_dashboard_uid      = each.value.uid_logs,
    logs_dashboard_name     = each.value.logs_name,
    servicemap_dashboard_uid = each.value.uid_servicemap,
    servicemap_dashboard_name = each.value.servicemap_name,
    errors_dashboard_uid    = each.value.uid_errors,
    errors_dashboard_name   = each.value.errors_name
    grafana_url   = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "errors_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Errors" => {
      folder_name    = folder
      dashboard_name = "Errors ${folder}"
      template       = "templates/errors_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}errors"
      uid_overview   = "${lower(folder)}over"
      overview_name  = "${lower(folder)}-overview"
      uid_traces     = "${lower(folder)}traces"
      traces_name    = "${lower(folder)}-traces"
      uid_logs       = "${lower(folder)}logs"
      logs_name      = "${lower(folder)}-logs"
      uid_servicemap = "${lower(folder)}servicemap"
      servicemap_name = "service-map-${lower(folder)}"
      uid_jvm        = "${lower(folder)}jvm"
      jvm_name       = "${lower(folder)}-jvm"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title         = each.value.dashboard_name,
    datasource              = each.value.datasource,
    uid                     = each.value.uid,
    uid_overview            = each.value.uid_overview,
    overview_name           = each.value.overview_name,
    traces_dashboard_uid    = each.value.uid_traces,
    traces_dashboard_name   = each.value.traces_name,
    logs_dashboard_uid      = each.value.uid_logs,
    logs_dashboard_name     = each.value.logs_name,
    servicemap_dashboard_uid = each.value.uid_servicemap,
    servicemap_dashboard_name = each.value.servicemap_name,
    jvm_dashboard_uid       = each.value.uid_jvm,
    jvm_dashboard_name      = each.value.jvm_name
    grafana_url   = var.grafana_stack_url
  })
}

resource "grafana_dashboard" "downstream_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Downstream & databases details" => {
      folder_name    = folder
      dashboard_name = "Downstream & databases details ${folder}"
      template       = "templates/downstream_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}downstream"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title = each.value.dashboard_name,
    datasource      = each.value.datasource,
    uid             = each.value.uid
  })
}

resource "grafana_dashboard" "operation_dashboards" {
  provider = grafana.cloud

  for_each = {
    for folder in var.folders :
    "${folder}-Operations details" => {
      folder_name    = folder
      dashboard_name = "Operations details ${folder}"
      template       = "templates/operation_template.json.tpl"
      datasource     = lower(folder)
      uid            = "${lower(folder)}operation"
    }
  }

  folder = grafana_folder.subfolder_combined[each.value.folder_name].id

  config_json = templatefile("${path.module}/${each.value.template}", {
    dashboard_title = each.value.dashboard_name,
    datasource      = each.value.datasource,
    uid             = each.value.uid
  })
}