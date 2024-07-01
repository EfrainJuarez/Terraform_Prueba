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
  "id": 1260,
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
      "id": 16,
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
      "id": 17,
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
      "id": 18,
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
      "id": 19,
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
      "id": 20,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"${grafana_url}/d/${jvm_dashboard_uid}/${jvm_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">JVM</a></h3>",
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
      "id": 15,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3 style=\"color: orange;\">Errors</h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72343",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "blue",
            "mode": "shades"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "bars",
            "fillOpacity": 54,
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
          },
          "unit": "s"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Percentil 0.95"
            },
            "properties": [
              {
                "id": "unit",
                "value": "s"
              },
              {
                "id": "custom.axisColorMode",
                "value": "text"
              },
              {
                "id": "custom.drawStyle",
                "value": "line"
              },
              {
                "id": "custom.lineInterpolation",
                "value": "smooth"
              },
              {
                "id": "custom.lineWidth",
                "value": 2
              },
              {
                "id": "custom.fillOpacity",
                "value": 0
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Failures"
            },
            "properties": [
              {
                "id": "unit"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Failure rate"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              },
              {
                "id": "max",
                "value": 1
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 17,
        "w": 24,
        "x": 0,
        "y": 4
      },
      "id": 3,
      "options": {
        "legend": {
          "calcs": [
            "lastNotNull"
          ],
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
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "histogram_quantile($${percentil}, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [5m])) by (le,job))\r\n",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "Percentil $${percentil}",
          "range": true,
          "refId": "A",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "sum(increase(traces_spanmetrics_latency_sum{job=\"$job\"}[5m])) / sum(increase(traces_spanmetrics_latency_count{job=\"$job\"}[5m]))",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "Median response time",
          "range": true,
          "refId": "B",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(increase(traces_spanmetrics_latency_count{job=\"$job\", status_code=\"STATUS_CODE_ERROR\"}[5m])) or vector(0)",
          "hide": false,
          "instant": false,
          "legendFormat": "Failures",
          "range": true,
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum(increase(traces_spanmetrics_latency_count{job=\"$job\", status_code=\"STATUS_CODE_ERROR\"}[5m])) or vector(0))/sum(increase(traces_spanmetrics_latency_count{job=\"$job\"}[5m])) ",
          "hide": false,
          "instant": false,
          "legendFormat": "Failure rate",
          "range": true,
          "refId": "D"
        }
      ],
      "title": "Rate",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "tempo",
        "uid": "grafanacloud-traces"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "auto",
            "cellOptions": {
              "type": "auto"
            },
            "filterable": true,
            "inspect": false
          },
          "mappings": [],
          "noValue": "Sin errores",
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
        "h": 16,
        "w": 24,
        "x": 0,
        "y": 21
      },
      "id": 22,
      "links": [
        {
          "targetBlank": true,
          "title": "Ver en explore",
          "url": "{grafana_url}/explore?schemaVersion=1&panes={\"axe\":{\"datasource\":\"grafanacloud-traces\",\"queries\":[{\"refId\":\"A\",\"datasource\":{\"type\":\"tempo\",\"uid\":\"grafanacloud-traces\"},\"queryType\":\"traceqlSearch\",\"limit\":1000,\"tableType\":\"traces\",\"filters\":[{\"id\":\"5082b271\",\"operator\":\"=\",\"scope\":\"span\"},{\"id\":\"service-name\",\"tag\":\"service.name\",\"operator\":\"=\",\"scope\":\"resource\",\"value\":[\"$service\"],\"valueType\":\"string\"},{\"id\":\"status\",\"tag\":\"status\",\"scope\":\"intrinsic\",\"operator\":\"=\",\"value\":\"error\",\"valueType\":\"keyword\"}],\"spss\":1000}],\"range\":{\"from\":\"$${__from}\",\"to\":\"$${__to}\"}}}&orgId=1"
        }
      ],
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
        "showHeader": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "tempo",
            "uid": "grafanacloud-traces"
          },
          "filters": [
            {
              "id": "f2352d31",
              "operator": "=",
              "scope": "span",
              "value": []
            },
            {
              "id": "service-name",
              "operator": "=~",
              "scope": "resource",
              "tag": "service.name",
              "value": [
                "$service"
              ],
              "valueType": "string"
            },
            {
              "id": "status",
              "operator": "=",
              "scope": "intrinsic",
              "tag": "status",
              "value": "error",
              "valueType": "keyword"
            }
          ],
          "limit": 1000,
          "queryType": "traceqlSearch",
          "refId": "A",
          "spss": 1000,
          "tableType": "traces"
        }
      ],
      "title": "Trazas con errores",
      "type": "table"
    }
  ],
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
      },
      {
        "current": {
          "selected": false,
          "text": "0.95",
          "value": "0.95"
        },
        "hide": 0,
        "includeAll": false,
        "label": "Slowest x%",
        "multi": false,
        "name": "percentil",
        "options": [
          {
            "selected": true,
            "text": "0.95",
            "value": "0.95"
          },
          {
            "selected": false,
            "text": "0.90",
            "value": "0.90"
          }
        ],
        "query": "0.95, 0.90",
        "queryValue": "",
        "skipUrlSync": false,
        "type": "custom"
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