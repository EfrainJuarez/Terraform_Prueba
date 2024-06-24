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
  "id": 449,
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
      "id": 14,
      "options": {
        "code": {
          "language": "typescript",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h1> $${job} </h1>",
        "mode": "html"
      },
      "pluginVersion": "11.1.0-71799",
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
      "id": 15,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${uid_overview}/${overview_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Overview</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71799",
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
      "id": 10,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3 style=\"color: orange;\">Traces</a></h3>",
        "mode": "html"
      },
      "pluginVersion": "11.1.0-71799",
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
      "id": 16,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${logs_dashboard_uid}/${logs_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Logs</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71799",
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
      "id": 17,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${servicemap_dashboard_uid}/${servicemap_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Service Map</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71799",
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
      "id": 18,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${jvm_dashboard_uid}/${jvm_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">JVM</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71799",
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
      "id": 19,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${errors_dashboard_uid}/${errors_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Errors</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71799",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "tempo",
        "uid": "grafanacloud-traces"
      },
      "fieldConfig": {
        "defaults": {
          "custom": {
            "align": "auto",
            "cellOptions": {
              "type": "auto"
            },
            "inspect": false
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
        "h": 20,
        "w": 24,
        "x": 0,
        "y": 4
      },
      "id": 2,
      "options": {
        "cellHeight": "sm",
        "footer": {
          "countRows": false,
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true,
        "sortBy": [
          {
            "desc": true,
            "displayName": "Start time"
          }
        ]
      },
      "pluginVersion": "11.1.0-71799",
      "targets": [
        {
          "datasource": {
            "type": "tempo",
            "uid": "grafanacloud-traces"
          },
          "filters": [
            {
              "id": "service-name",
              "operator": "=",
              "scope": "resource",
              "tag": "service.name",
              "value": [
                "app-mbbk-session-v3"
              ],
              "valueType": "string"
            },
            {
              "id": "resourceservicenamespace",
              "operator": "=",
              "scope": "resource",
              "tag": "service.namespace",
              "value": [
                "mbbk"
              ],
              "valueType": "string"
            }
          ],
          "limit": 1000,
          "query": "{resource.service.name=\"$service\" && resource.service.namespace=\"$namespace\"}",
          "queryType": "traceql",
          "refId": "A",
          "spss": 1000,
          "tableType": "traces"
        }
      ],
      "title": "Traces",
      "type": "table"
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
          "text": "ageb/channel-ageb-account-transfer-v1",
          "value": "ageb/channel-ageb-account-transfer-v1"
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
          "text": "ageb",
          "value": "ageb"
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
          "text": "Cloud Prometheus: ageb-cer-ageb_token",
          "value": "adfnehrm5v08wb"
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