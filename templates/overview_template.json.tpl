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
  "id": 371,
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
      "pluginVersion": "11.1.0-71516",
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
      "id": 9,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3 style=\"color: orange;\">Overview</h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71516",
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
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${traces_dashboard_uid}/${traces_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Traces</a></h3>",
        "mode": "html"
      },
      "pluginVersion": "11.1.0-71516",
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
      "id": 11,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${logs_dashboard_uid}/${logs_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Logs</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71516",
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
      "id": 12,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${servicemap_dashboard_uid}/${servicemap_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Service Map</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71516",
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
      "id": 13,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${jvm_dashboard_uid}/${jvm_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">JVM</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71516",
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
        "content": "<h3><a href=\"https://bcpdesa.grafana.net/d/${errors_dashboard_uid}/${errors_dashboard_name}?orgId=1&var-job=$${job}&var-service=$${service}&var-namespace=$${namespace}&$${__url_time_range}\" style=\"color: #ffffff;\r\n    text-decoration: none;\">Errors</a></h3>",
        "mode": "markdown"
      },
      "pluginVersion": "11.1.0-71516",
      "transparent": true,
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "blue",
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
            "fillOpacity": 48,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineStyle": {
              "fill": "solid"
            },
            "lineWidth": 2,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
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
          },
          "unit": "reqps"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Slowest 5%"
            },
            "properties": [
              {
                "id": "custom.drawStyle",
                "value": "bars"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.fillOpacity",
                "value": 100
              },
              {
                "id": "unit",
                "value": "s"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Slowest 10%"
            },
            "properties": [
              {
                "id": "custom.drawStyle",
                "value": "bars"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "yellow",
                  "mode": "fixed"
                }
              },
              {
                "id": "unit",
                "value": "s"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 8,
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
            "uid": "$${promds}"
          },
          "displayName": "95th percentile",
          "editorMode": "code",
          "exemplar": true,
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (le,job))",
          "interval": "5m",
          "legendFormat": "Slowest 5%",
          "range": true,
          "refId": "serviceP95Query"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (job)",
          "hide": false,
          "instant": false,
          "legendFormat": "Request rate",
          "range": true,
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "displayName": "95th percentile",
          "editorMode": "code",
          "exemplar": true,
          "expr": "histogram_quantile(0.90, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (le,job))",
          "hide": false,
          "interval": "5m",
          "legendFormat": "Slowest 10%",
          "range": true,
          "refId": "B"
        }
      ],
      "title": "Duration",
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
          },
          "unit": "percent"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Failure rate"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "dark-red",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.fillOpacity",
                "value": 0
              },
              {
                "id": "custom.drawStyle",
                "value": "bars"
              },
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "max",
                "value": 1
              },
              {
                "id": "min",
                "value": 0
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Request rate"
            },
            "properties": [
              {
                "id": "custom.drawStyle",
                "value": "line"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "dark-blue",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.fillOpacity",
                "value": 0
              },
              {
                "id": "unit",
                "value": "reqps"
              },
              {
                "id": "custom.lineWidth",
                "value": 6
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "# Failed requests"
            },
            "properties": [
              {
                "id": "custom.drawStyle",
                "value": "bars"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "light-red",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.fillOpacity",
                "value": 0
              },
              {
                "id": "unit",
                "value": "none"
              },
              {
                "id": "decimals",
                "value": 0
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 8,
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
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [$__range])) by (job)",
          "hide": false,
          "instant": false,
          "legendFormat": "Request rate",
          "range": true,
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(increase(traces_spanmetrics_latency_count{service_namespace=\"$namespace\", job=\"$job\", status_code=\"STATUS_CODE_ERROR\"}[$__range])) / sum(increase(traces_spanmetrics_latency_count{service_namespace=\"$namespace\", job=\"$job\"}[$__range]))",
          "interval": "",
          "legendFormat": "Failure rate",
          "range": true,
          "refId": "serviceErrorsQuery"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(increase(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=~\"$job\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\"} [$__range])) by (job) ",
          "hide": false,
          "instant": false,
          "legendFormat": "# Failed requests",
          "range": true,
          "refId": "B"
        }
      ],
      "title": "Errors",
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
          "unit": "reqps"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "CPU"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percent"
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
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
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
        "x": 16,
        "y": 4
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
          "expr": " sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (job)",
          "interval": "",
          "legendFormat": "Requests rate",
          "range": true,
          "refId": "serviceRateQuery"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "sum by(le) ((node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate{namespace=\"$namespace\"}))",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "CPU",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Rate",
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
            "fixedColor": "orange",
            "mode": "fixed"
          },
          "decimals": 0,
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
              "options": "0"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Less than a milisecond"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.005"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "5ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.01"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "10ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.025"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "25ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.05"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "50ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.1"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "100ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.25"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "250ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.5"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "500ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.75"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "750ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "1"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "1s"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "2.5"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "2.5s"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "5"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "5s"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "7.5"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "7.5s"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "10"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "10s"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "0.075"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "75ms"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 10,
        "w": 12,
        "x": 0,
        "y": 13
      },
      "id": 8,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 16,
        "minVizWidth": 8,
        "namePlacement": "auto",
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "valueMode": "color"
      },
      "pluginVersion": "11.1.0-71516",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum by (le) (increase(traces_spanmetrics_latency_bucket{deployment_environment=~\".*\", span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\"} [$__range]))",
          "format": "heatmap",
          "instant": false,
          "interval": "5m",
          "legendFormat": "__auto",
          "range": true,
          "refId": "serviceOverviewLatencyDistribution"
        }
      ],
      "title": "Duration distribution",
      "type": "bargauge"
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
            "align": "auto",
            "cellOptions": {
              "fillOpacity": 0,
              "gradientMode": "opacity",
              "lineStyle": {
                "dash": [
                  0,
                  10
                ],
                "fill": "solid"
              },
              "lineWidth": 1,
              "showPoints": "never",
              "spanNulls": false,
              "type": "sparkline"
            },
            "inspect": false
          },
          "decimals": 1,
          "fieldMinMax": false,
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
          "unit": "dtdurations"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewdownstreamDatabasesRate"
            },
            "properties": [
              {
                "id": "unit",
                "value": "reqps"
              },
              {
                "id": "displayName",
                "value": "Rate"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewdownstreamDatabasesDuration"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Duration, p95"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewdownstreamDatabasesErrors"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Errors"
              },
              {
                "id": "unit",
                "value": "percentunit"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "server"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Name"
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "auto"
                }
              },
              {
                "id": "links",
                "value": [
                  {
                    "targetBlank": true,
                    "title": "More details",
                    "url": "d/${downstream_dashboard_uid}/${downstream_dashboard_name}?orgId=1&var-server=$${__data.fields.server}"
                  }
                ]
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/server_service_namespace.*/"
            },
            "properties": [
              {
                "id": "custom.hidden",
                "value": true
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 10,
        "w": 12,
        "x": 12,
        "y": 13
      },
      "id": 5,
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
        "frameIndex": 2,
        "showHeader": true
      },
      "pluginVersion": "11.1.0-71516",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "histogram_quantile(0.95, sum(rate(traces_service_graph_request_client_seconds_bucket{client=~\"$service\", client_deployment_environment=~\".*\", client_service_namespace=~\"$namespace\"} [6m0s])) by (le, server, server_service_namespace))",
          "interval": "5m",
          "legendFormat": "serviceOverviewdownstreamDatabasesDuration",
          "range": true,
          "refId": "serviceOverviewdownstreamDatabasesDuration"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_service_graph_request_failed_total{client=~\"$service\", client_deployment_environment=~\".*\", client_service_namespace=~\"$namespace\"} [6m0s])) by (server, server_service_namespace) OR sum(rate(traces_service_graph_request_total{client=~\"$service\", client_deployment_environment=~\".*\", client_service_namespace=~\"$namespace\"} [6m0s])) by (server, server_service_namespace) * 0) / sum(rate(traces_service_graph_request_total{client=~\"$service\", client_deployment_environment=~\".*\", client_service_namespace=~\"$namespace\"} [6m0s])) by (server, server_service_namespace)",
          "interval": "5m",
          "legendFormat": "__auto",
          "range": true,
          "refId": "serviceOverviewdownstreamDatabasesErrors"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "sum(rate(traces_service_graph_request_total{client=~\"$service\", client_deployment_environment=~\".*\", client_service_namespace=~\"$namespace\"} [6m0s])) by (server, server_service_namespace)",
          "interval": "5m",
          "legendFormat": "__auto",
          "range": true,
          "refId": "serviceOverviewdownstreamDatabasesRate"
        }
      ],
      "title": "Downstream & databases",
      "transformations": [
        {
          "id": "timeSeriesTable",
          "options": {
            "serviceOverviewdownstreamDatabasesDuration": {
              "stat": "lastNotNull",
              "timeField": "Time"
            },
            "serviceOverviewdownstreamDatabasesErrors": {
              "stat": "lastNotNull",
              "timeField": "Time"
            },
            "serviceOverviewdownstreamDatabasesRate": {
              "stat": "lastNotNull",
              "timeField": "Time"
            }
          }
        },
        {
          "id": "joinByField",
          "options": {
            "byField": "server",
            "mode": "outer"
          }
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "orange",
            "mode": "fixed"
          },
          "custom": {
            "align": "auto",
            "cellOptions": {
              "fillOpacity": 0,
              "gradientMode": "opacity",
              "lineStyle": {
                "dash": [
                  0,
                  10
                ],
                "fill": "solid"
              },
              "lineWidth": 1,
              "showPoints": "never",
              "spanNulls": false,
              "type": "sparkline"
            },
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
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
              "options": "span_name"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "auto"
                }
              },
              {
                "id": "displayName",
                "value": "Operation"
              },
              {
                "id": "links",
                "value": [
                  {
                    "targetBlank": true,
                    "title": "More details",
                    "url": "d/${operation_dashboard_uid}/${operation_dashboard_name}-details-apcs?orgId=1&from=now-24h&to=now&var-job=$job&var-span=$${__data.fields.span_name}"
                  }
                ]
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewOperationsDuration"
            },
            "properties": [
              {
                "id": "unit",
                "value": "dtdurations"
              },
              {
                "id": "displayName",
                "value": "Duration, p95"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewOperationsErrors"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "displayName",
                "value": "Errors"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewOperationsRate"
            },
            "properties": [
              {
                "id": "unit",
                "value": "reqps"
              },
              {
                "id": "displayName",
                "value": "Rate"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #A"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Duration, avg"
              },
              {
                "id": "unit",
                "value": "dtdurations"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 23
      },
      "id": 6,
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
        "frameIndex": 0,
        "showHeader": true
      },
      "pluginVersion": "11.1.0-69622",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (le,span_name))",
          "interval": "5m",
          "legendFormat": "serviceOverviewOperationsDuration",
          "range": true,
          "refId": "serviceOverviewOperationsDuration"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(increase(traces_spanmetrics_latency_sum{job=~\"$job\"}[$__range])) by (span_name) / sum(increase(traces_spanmetrics_latency_count{job=~\"$job\"}[$__range])) by (span_name)",
          "hide": false,
          "instant": false,
          "interval": "5m",
          "legendFormat": "__auto",
          "range": true,
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\"} [6m0s])) by (span_name) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (span_name) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (span_name)",
          "interval": "5m",
          "legendFormat": "serviceOverviewOperationsErrors",
          "range": true,
          "refId": "serviceOverviewOperationsErrors"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", deployment_environment=~\".*\"} [6m0s])) by (span_name)",
          "interval": "5m",
          "legendFormat": "serviceOverviewOperationsRate",
          "range": true,
          "refId": "serviceOverviewOperationsRate"
        }
      ],
      "title": "Operations",
      "transformations": [
        {
          "id": "timeSeriesTable",
          "options": {
            "serviceOverviewOperationsDuration": {
              "timeField": "Time"
            },
            "serviceOverviewOperationsErrors": {
              "timeField": "Time"
            },
            "serviceOverviewOperationsRate": {
              "timeField": "Time"
            }
          }
        },
        {
          "id": "joinByField",
          "options": {
            "byField": "span_name",
            "mode": "outer"
          }
        }
      ],
      "type": "table"
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
            "align": "auto",
            "cellOptions": {
              "fillOpacity": 0,
              "gradientMode": "opacity",
              "lineStyle": {
                "dash": [
                  0,
                  10
                ],
                "fill": "solid"
              },
              "lineWidth": 1,
              "showPoints": "never",
              "spanNulls": false,
              "type": "sparkline"
            },
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
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
              "options": "client"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Name"
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "auto"
                }
              },
              {
                "id": "links",
                "value": [
                  {
                    "targetBlank": true,
                    "title": "More details",
                    "url": "d/${uid}/${overview_name}?orgId=1&var-job=$${__data.fields.server_service_namespace}/$${__data.fields.client}&var-server=$${__data.fields.client}"
                  }
                ]
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewupstreamDuration"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Duration, p95"
              },
              {
                "id": "unit",
                "value": "dtdurations"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewupstreamErrors"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Errors"
              },
              {
                "id": "unit",
                "value": "percentunit"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #serviceOverviewupstreamRate"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Rate"
              },
              {
                "id": "unit",
                "value": "reqps"
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/server_service_namespace.*/"
            },
            "properties": [
              {
                "id": "custom.hidden",
                "value": true
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 23
      },
      "id": 7,
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
      "pluginVersion": "11.1.0-69622",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "histogram_quantile(0.95, sum(rate(traces_service_graph_request_server_seconds_bucket{server=~\"$service\", server_deployment_environment=~\".*\", server_service_namespace=~\"$namespace\", client!=\"user\"} [6m0s])) by (le, client,server_service_namespace))",
          "interval": "5m",
          "legendFormat": "serviceOverviewupstreamDuration",
          "range": true,
          "refId": "serviceOverviewupstreamDuration"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_service_graph_request_failed_total{server=~\"$service\", server_deployment_environment=~\".*\", server_service_namespace=~\"$namespace\", client!=\"user\"} [6m0s])) by (client,server_service_namespace) OR sum(rate(traces_service_graph_request_total{server=~\"$service\", server_deployment_environment=~\".*\", server_service_namespace=~\"$namespace\", client!=\"user\"} [6m0s])) by (client,server_service_namespace) * 0) / sum(rate(traces_service_graph_request_total{server=~\"$service\", server_deployment_environment=~\".*\", server_service_namespace=~\"$namespace\", client!=\"user\"} [6m0s])) by (client,server_service_namespace)",
          "interval": "5m",
          "legendFormat": "serviceOverviewupstreamErrors",
          "range": true,
          "refId": "serviceOverviewupstreamErrors"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "grafanacloud-prom"
          },
          "editorMode": "code",
          "expr": "sum(rate(traces_service_graph_request_total{server=~\"$service\", server_deployment_environment=~\".*\", server_service_namespace=~\"$namespace\", client!=\"user\"} [6m0s])) by (client,server_service_namespace)",
          "interval": "5m",
          "legendFormat": "serviceOverviewupstreamRate",
          "range": true,
          "refId": "serviceOverviewupstreamRate"
        }
      ],
      "title": "Upstream",
      "transformations": [
        {
          "id": "timeSeriesTable",
          "options": {
            "serviceOverviewupstreamDuration": {
              "timeField": "Time"
            },
            "serviceOverviewupstreamErrors": {
              "timeField": "Time"
            },
            "serviceOverviewupstreamRate": {
              "stat": "lastNotNull",
              "timeField": "Time"
            }
          }
        },
        {
          "id": "joinByField",
          "options": {
            "byField": "client",
            "mode": "outer"
          }
        }
      ],
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
          "text": "apcs/business-corporate-loan-v2",
          "value": "apcs/business-corporate-loan-v2"
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
          "text": "apcs",
          "value": "apcs"
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
          "text": "Cloud Prometheus: apcs-cer-apcs_token",
          "value": "eddl2t0twaosgd"
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