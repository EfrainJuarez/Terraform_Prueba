{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": {
          "type": "grafana",
          "uid": "-- Grafana --"
        },
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "type": "dashboard"
      }
    ]
  },
  "editable": true,
  "fiscalYearStartMonth": 0,
  "graphTooltip": 0,
  "id": 1261,
  "links": [],
  "liveNow": false,
  "panels": [
    {
      "datasource": {
        "type": "tempo",
        "uid": "grafanacloud-traces"
      },
      "gridPos": {
        "h": 2,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 11,
      "options": {
        "code": {
          "language": "typescript",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h1> $${job} </h1>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "tempo",
            "uid": "grafanacloud-traces"
          },
          "limit": 20,
          "queryType": "traceql",
          "refId": "A",
          "tableType": "traces"
        }
      ],
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "loki",
        "uid": "grafanacloud-logs"
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 0,
        "y": 2
      },
      "id": 12,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"${grafana_url}/d/${overview_dashboard_uid}/${overview_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Overview</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "loki",
        "uid": "grafanacloud-logs"
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 3,
        "y": 2
      },
      "id": 13,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"${grafana_url}/d/${traces_dashboard_uid}/${traces_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Traces</a></h3>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "loki",
        "uid": "grafanacloud-logs"
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 6,
        "y": 2
      },
      "id": 14,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"${grafana_url}/d/${logs_dashboard_uid}/${logs_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Logs</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "loki",
        "uid": "grafanacloud-logs"
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 9,
        "y": 2
      },
      "id": 15,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"${grafana_url}/d/${servicemap_dashboard_uid}/${servicemap_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Service Map</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "loki",
        "uid": "grafanacloud-logs"
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 12,
        "y": 2
      },
      "id": 10,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3 style=\"color: orange;\">JVM</h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "loki",
        "uid": "grafanacloud-logs"
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 15,
        "y": 2
      },
      "id": 16,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"${grafana_url}/d/${errors_dashboard_uid}/${errors_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Errors</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "grafanacloud-prom"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 37,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "auto",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              }
            ]
          }
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "process_runtime_jvm_system_cpu_utilization{container_id=\"bd26e9526a5c6d3e7e87cd4ebec1d9fc56c6c8b5b154f8e3a0edc42924213dbb\", env=\"dev\", host_arch=\"amd64\", host_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", job=\"mbbk/app-mbbk-session-v3\", k8s_container_name=\"app-mbbk-session-v3\", k8s_deployment_name=\"app-mbbk-session-v3\", k8s_namespace_name=\"mbbk\", k8s_node_name=\"aks-agentbadi-19350326-vmss0000et\", k8s_pod_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", k8s_replicaset_name=\"app-mbbk-session-v3-84c5f7f64c\", os_description=\"Linux 5.15.0-1051-azure\", os_type=\"linux\", service_name=\"app-mbbk-session-v3\", service_namespace=\"mbbk\", service_version=\"3.1.1-SNAPSHOT-dev\", telemetry_auto_version=\"1.31.0\", telemetry_sdk_language=\"java\", telemetry_sdk_name=\"opentelemetry\", telemetry_sdk_version=\"1.31.0\"}"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "orange",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "system_cpu_usage{container_id=\"bd26e9526a5c6d3e7e87cd4ebec1d9fc56c6c8b5b154f8e3a0edc42924213dbb\", env=\"dev\", host_arch=\"amd64\", host_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", job=\"mbbk/app-mbbk-session-v3\", k8s_container_name=\"app-mbbk-session-v3\", k8s_deployment_name=\"app-mbbk-session-v3\", k8s_namespace_name=\"mbbk\", k8s_node_name=\"aks-agentbadi-19350326-vmss0000et\", k8s_pod_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", k8s_replicaset_name=\"app-mbbk-session-v3-84c5f7f64c\", os_description=\"Linux 5.15.0-1051-azure\", os_type=\"linux\", service_name=\"app-mbbk-session-v3\", service_namespace=\"mbbk\", service_version=\"3.1.1-SNAPSHOT-dev\", telemetry_auto_version=\"1.31.0\", telemetry_sdk_language=\"java\", telemetry_sdk_name=\"opentelemetry\", telemetry_sdk_version=\"1.31.0\"}"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 0,
        "y": 4
      },
      "id": 1,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "{__name__=~\"jvm_cpu_recent_utilization|jvm_cpu_recent_utilization_ratio|process_runtime_jvm_system_cpu_utilization|process_runtime_jvm_system_cpu_utilization_ratio|system_cpu_usage\", job=\"$job\", instance=~\".*\"}",
          "range": true,
          "refId": "serviceJvmCpuUtilizationSystem"
        }
      ],
      "title": "CPU utilization",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "grafanacloud-prom"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "auto",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 12,
        "y": 4
      },
      "id": 2,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "(sum by (instance) ({__name__=~\"jvm_memory_used|jvm_memory_used_bytes\", job=\"$job\", jvm_memory_type=\"heap\", instance=~\".*\"}) / on (instance) sum by (instance) ({__name__=~\"jvm_memory_limit|jvm_memory_limit_bytes\", job=\"$job\", jvm_memory_type=\"heap\", instance=~\".*\"}))\nor\n(sum by (instance) ({__name__=~\"process_runtime_jvm_memory_usage|process_runtime_jvm_memory_usage_bytes\", job=\"$job\", type=\"heap\", instance=~\".*\"}) / on (instance) sum by (instance) ({__name__=~\"process_runtime_jvm_memory_limit|process_runtime_jvm_memory_limit_bytes\", job=\"$job\", type=\"heap\", instance=~\".*\"}))\nor\n(sum by (instance) ({__name__=~\"jvm_memory_used|jvm_memory_used_bytes\", job=\"$job\", area=\"heap\", instance=~\".*\"}) / on (instance) sum by (instance) ({__name__=~\"jvm_memory_max|jvm_memory_max_bytes\", job=\"$job\", area=\"heap\", instance=~\".*\"}))",
          "range": true,
          "refId": "serviceJvmHeapMemoryUsed"
        }
      ],
      "title": "Heap Memory utilization",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "auto",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 0,
        "y": 13
      },
      "id": 3,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum by(instance) (rate({__name__=~\"jvm_gc_duration_sum|jvm_gc_duration_seconds_sum|process_runtime_jvm_gc_duration_sum\", job=\"cptd/business-withdrawalorders-request-list-v1\", instance=~\".*\"}[4m])))\nor\n(sum by(instance) (rate(jvm_gc_pause_milliseconds_sum{job=\"cptd/business-withdrawalorders-request-list-v1\", instance=~\".*\"}[4m])) / 1000)",
          "range": true,
          "refId": "serviceJvmGarbageCollection"
        }
      ],
      "title": "Garbage Collection",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "grafanacloud-prom"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 32,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "auto",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "jvm_classes_loaded{container_id=\"bd26e9526a5c6d3e7e87cd4ebec1d9fc56c6c8b5b154f8e3a0edc42924213dbb\", env=\"dev\", host_arch=\"amd64\", host_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", job=\"mbbk/app-mbbk-session-v3\", k8s_container_name=\"app-mbbk-session-v3\", k8s_deployment_name=\"app-mbbk-session-v3\", k8s_namespace_name=\"mbbk\", k8s_node_name=\"aks-agentbadi-19350326-vmss0000et\", k8s_pod_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", k8s_replicaset_name=\"app-mbbk-session-v3-84c5f7f64c\", os_description=\"Linux 5.15.0-1051-azure\", os_type=\"linux\", service_name=\"app-mbbk-session-v3\", service_namespace=\"mbbk\", service_version=\"3.1.1-SNAPSHOT-dev\", telemetry_auto_version=\"1.31.0\", telemetry_sdk_language=\"java\", telemetry_sdk_name=\"opentelemetry\", telemetry_sdk_version=\"1.31.0\"}"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "orange",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "process_runtime_jvm_classes_current_loaded{container_id=\"bd26e9526a5c6d3e7e87cd4ebec1d9fc56c6c8b5b154f8e3a0edc42924213dbb\", env=\"dev\", host_arch=\"amd64\", host_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", job=\"mbbk/app-mbbk-session-v3\", k8s_container_name=\"app-mbbk-session-v3\", k8s_deployment_name=\"app-mbbk-session-v3\", k8s_namespace_name=\"mbbk\", k8s_node_name=\"aks-agentbadi-19350326-vmss0000et\", k8s_pod_name=\"app-mbbk-session-v3-84c5f7f64c-c7pqd\", k8s_replicaset_name=\"app-mbbk-session-v3-84c5f7f64c\", os_description=\"Linux 5.15.0-1051-azure\", os_type=\"linux\", service_name=\"app-mbbk-session-v3\", service_namespace=\"mbbk\", service_version=\"3.1.1-SNAPSHOT-dev\", telemetry_auto_version=\"1.31.0\", telemetry_sdk_language=\"java\", telemetry_sdk_name=\"opentelemetry\", telemetry_sdk_version=\"1.31.0\"}"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 8,
        "y": 13
      },
      "id": 4,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "{__name__=~\"jvm_class_count|process_runtime_jvm_classes_current_loaded|jvm_classes_loaded\", job=\"$job\", instance=~\".*\"}",
          "range": true,
          "refId": "serviceJvmClasses"
        }
      ],
      "title": "Classes",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "grafanacloud-prom"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "orange",
            "mode": "fixed"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 38,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "auto",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 16,
        "y": 13
      },
      "id": 5,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "sum by (instance) ({__name__=~\"jvm_thread_count|process_runtime_jvm_threads_count|jvm_threads_live\", job=\"$job\", instance=~\".*\"})",
          "range": true,
          "refId": "serviceJvmThreads"
        }
      ],
      "title": "Threads",
      "type": "timeseries"
    }
  ],
  "refresh": "",
  "schemaVersion": 39,
  "tags": [],
  "templating": {
    "list": [
      {
        "current": {
          "selected": false,
          "text": "ciam/app-ciam-card-pin-v1",
          "value": "ciam/app-ciam-card-pin-v1"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promds}"
        },
        "definition": "label_values(traces_spanmetrics_latency_count,job)",
        "hide": 2,
        "includeAll": false,
        "label": "job",
        "multi": false,
        "name": "job",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(traces_spanmetrics_latency_count,job)",
          "refId": "PrometheusVariableQueryEditor-VariableQuery"
        },
        "refresh": 1,
        "regex": "",
        "skipUrlSync": false,
        "sort": 0,
        "type": "query"
      },
      {
        "current": {
          "isNone": true,
          "selected": false,
          "text": "None",
          "value": ""
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promds}"
        },
        "definition": "label_values(traces_spanmetrics_latency_count,service)",
        "hide": 2,
        "includeAll": false,
        "label": "Service",
        "multi": false,
        "name": "service",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(traces_spanmetrics_latency_count,service)",
          "refId": "PrometheusVariableQueryEditor-VariableQuery"
        },
        "refresh": 1,
        "regex": "",
        "skipUrlSync": false,
        "sort": 0,
        "type": "query"
      },
      {
        "current": {
          "selected": false,
          "text": "ciam",
          "value": "ciam"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promds}"
        },
        "definition": "label_values(service_namespace)",
        "hide": 2,
        "includeAll": false,
        "multi": false,
        "name": "namespace",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(service_namespace)",
          "refId": "PrometheusVariableQueryEditor-VariableQuery"
        },
        "refresh": 1,
        "regex": "",
        "skipUrlSync": false,
        "sort": 0,
        "type": "query"
      },
      {
        "current": {
          "selected": false,
          "text": "Cloud Prometheus: ciam-cer-ciam_token",
          "value": "edfnkmt7ndurka"
        },
        "hide": 2,
        "includeAll": false,
        "multi": false,
        "name": "promds",
        "options": [],
        "query": "prometheus",
        "queryValue": "",
        "refresh": 1,
        "regex": "/${datasource}.*/",
        "skipUrlSync": false,
        "type": "datasource"
      }
    ]
  },
  "time": {
    "from": "now-7d",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "${dashboard_title}",
  "uid": "${uid}",
  "weekStart": ""
}