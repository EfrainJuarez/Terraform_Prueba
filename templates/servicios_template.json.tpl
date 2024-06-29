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
  "graphTooltip": 1,
  "id": 1258,
  "links": [],
  "liveNow": false,
  "panels": [
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
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
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "C"
            },
            "properties": [
              {
                "id": "custom.axisPlacement",
                "value": "right"
              },
              {
                "id": "custom.drawStyle",
                "value": "line"
              },
              {
                "id": "custom.axisColorMode",
                "value": "series"
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
                "value": 10
              },
              {
                "id": "min",
                "value": 0
              },
              {
                "id": "custom.axisSoftMax",
                "value": 0.1
              },
              {
                "id": "unit",
                "value": "percentunit"
              }
            ]
          },
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "D"
            },
            "properties": [
              {
                "id": "custom.fillOpacity",
                "value": 45
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "light-blue",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.axisColorMode",
                "value": "series"
              },
              {
                "id": "custom.drawStyle",
                "value": "line"
              },
              {
                "id": "custom.axisPlacement",
                "value": "left"
              }
            ]
          },
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "A"
            },
            "properties": [
              {
                "id": "custom.fillOpacity",
                "value": 100
              },
              {
                "id": "custom.lineStyle",
                "value": {
                  "dash": [
                    10,
                    10
                  ],
                  "fill": "dash"
                }
              },
              {
                "id": "custom.axisPlacement",
                "value": "left"
              },
              {
                "id": "custom.axisColorMode",
                "value": "series"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "light-green",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 0,
        "y": 0
      },
      "id": 77,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "table",
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
          "azureMonitor": {
            "aggregation": "Average",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "queryType": "Azure Monitor",
          "refId": "A",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        },
        {
          "azureMonitor": {
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "Http5xx",
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "hide": false,
          "queryType": "Azure Monitor",
          "refId": "C",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        },
        {
          "azureMonitor": {
            "aggregation": "Average",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "Requests",
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "hide": false,
          "queryType": "Azure Monitor",
          "refId": "D",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        }
      ],
      "title": "Azure app Service",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "gridPos": {
        "h": 2,
        "w": 20,
        "x": 4,
        "y": 0
      },
      "id": 29,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>$${job}</h4></center>",
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
      "description": "",
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
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              }
            ]
          },
          "unit": "s"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 10,
        "w": 7,
        "x": 4,
        "y": 2
      },
      "id": 43,
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
      "pluginVersion": "10.4.0-65610",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=~\"$job\", deployment_environment=~\".*\"} [$__rate_interval])) by (le,job))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "15m",
          "legendFormat": "Slowest 5% {{job}}",
          "range": true,
          "refId": "A",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "histogram_quantile(0.90, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=~\"$job\", deployment_environment=~\".*\"} [$__rate_interval])) by (le,job))",
          "hide": false,
          "instant": false,
          "interval": "15m",
          "legendFormat": "Slowest 10% {{job}}",
          "range": true,
          "refId": "B"
        }
      ],
      "title": "Latency",
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
            "axisBorderShow": true,
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
            "lineStyle": {
              "fill": "solid"
            },
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
          "fieldMinMax": false,
          "mappings": [],
          "max": 1,
          "min": 0,
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "#6ED0E0",
                "value": 20
              },
              {
                "color": "#EAB839",
                "value": 30
              },
              {
                "color": "red",
                "value": 50
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 10,
        "w": 6,
        "x": 11,
        "y": 2
      },
      "id": 27,
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
      "pluginVersion": "10.4.0-65610",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\",   job=~\"$job\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\"} [$__rate_interval])) by (job) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\",   job=~\"$job\", deployment_environment=~\".*\"} [$__rate_interval])) by (job) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\",   job=~\"$job\", deployment_environment=~\".*\"} [$__rate_interval])) by (job)",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "15m",
          "legendFormat": "__auto",
          "range": true,
          "refId": "B",
          "useBackend": false
        }
      ],
      "title": "Failure rate",
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
            "axisBorderShow": true,
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
              }
            ]
          }
        },
        "overrides": [
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "A"
            },
            "properties": [
              {
                "id": "custom.drawStyle",
                "value": "bars"
              },
              {
                "id": "custom.fillOpacity",
                "value": 17
              },
              {
                "id": "unit",
                "value": "reqpm"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 10,
        "w": 7,
        "x": 17,
        "y": 2
      },
      "id": 54,
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
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=~\"$job\", deployment_environment=~\".*\"} [$__rate_interval])) by (job)",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "15m",
          "legendFormat": "Rate {{ job }}",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Requests rate",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "fieldMinMax": false,
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
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "A"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              },
              {
                "id": "unit",
                "value": "percentunit"
              }
            ]
          },
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "B"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "light-blue",
                  "mode": "fixed"
                }
              },
              {
                "id": "unit",
                "value": "reqpm"
              }
            ]
          },
          {
            "matcher": {
              "id": "byFrameRefID",
              "options": "C"
            },
            "properties": [
              {
                "id": "unit",
                "value": "ms"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "light-green",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 4,
        "x": 0,
        "y": 9
      },
      "id": 42,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "horizontal",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "text": {
          "titleSize": 15,
          "valueSize": 15
        },
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "azureMonitor": {
            "aggregation": "Average",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "HttpResponseTime",
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "queryType": "Azure Monitor",
          "refId": "A",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        },
        {
          "azureMonitor": {
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "Http5xx",
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "hide": false,
          "queryType": "Azure Monitor",
          "refId": "B",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        },
        {
          "azureMonitor": {
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "Requests",
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "hide": false,
          "queryType": "Azure Monitor",
          "refId": "C",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 10,
        "x": 4,
        "y": 12
      },
      "id": 7,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h4>Tasa de fallas (General)</h4>",
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
      "gridPos": {
        "h": 1.25,
        "w": 10,
        "x": 14,
        "y": 12
      },
      "id": 2,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h4>Cantidad de errores HTTP (General)</h4>",
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
            "mode": "thresholds"
          },
          "fieldMinMax": false,
          "mappings": [],
          "max": 1,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "yellow",
                "value": 0.33
              },
              {
                "color": "orange",
                "value": 0.5
              },
              {
                "color": "red",
                "value": 0.75
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 5,
        "x": 4,
        "y": 13.25
      },
      "id": 66,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "text"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(job) (increase(http_server_requests_count{status=~\"^4[0-9][0-9]\", service_namespace=~\"$namespace\", job=~\"$job\"}[$__range]))) / sum by(job) (increase(http_server_requests_count{service_namespace=~\"$namespace\", job=~\"$job\"}[$__range]))",
          "format": "time_series",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "failure rate (HTTP 4xx errors)",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "fieldMinMax": false,
          "mappings": [],
          "max": 1,
          "min": 0,
          "noValue": "no 5xx errors",
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "yellow",
                "value": 25
              },
              {
                "color": "orange",
                "value": 33
              },
              {
                "color": "red",
                "value": 50
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 5,
        "x": 9,
        "y": 13.25
      },
      "id": 47,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "text"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(job) (increase(http_server_requests_count{status=~\"^5[0-9][0-9]\", service_namespace=~\"$namespace\", job=~\"$job\"}[$__range]))) / sum by(job) (increase(http_server_requests_count{service_namespace=~\"$namespace\", job=~\"$job\"}[$__range]))",
          "format": "time_series",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "failure rate (HTTP 5xx errors)",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "decimals": 0,
          "fieldMinMax": false,
          "mappings": [],
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "yellow",
                "value": 50
              },
              {
                "color": "orange",
                "value": 75
              },
              {
                "color": "dark-red",
                "value": 100
              }
            ]
          },
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 5,
        "x": 14,
        "y": 13.25
      },
      "id": 1,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "text"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(job) (increase(http_server_requests_count{status=~\"4[0-9][0-9]\", service_namespace=~\"$namespace\", job=~\"$job\"}[$__range])))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Number of HTTP 4xx errors",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "decimals": 0,
          "fieldMinMax": false,
          "mappings": [],
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "yellow",
                "value": 50
              },
              {
                "color": "orange",
                "value": 100
              },
              {
                "color": "red",
                "value": 150
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 5,
        "x": 19,
        "y": 13.25
      },
      "id": 3,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "text"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(job) (increase(http_server_requests_count{status=~\"5[0-9][0-9]\", service_namespace=~\"$namespace\", job=~\"$job\"}[$__range])))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Number of HTTP 5xx errors",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 7,
        "w": 4,
        "x": 0,
        "y": 17
      },
      "id": 15,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "azureMonitor": {
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              60000,
              300000,
              900000,
              1800000,
              3600000,
              21600000,
              43200000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "Http5xx",
            "metricNamespace": "microsoft.web/sites",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Web/sites",
                "region": "eastus2",
                "resourceGroup": "RSGREU2CIAMC01",
                "resourceName": "fncteu2ciamc01",
                "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
              }
            ],
            "timeGrain": "auto"
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "queryType": "Azure Monitor",
          "refId": "A",
          "subscription": "3ced38fc-3110-4a32-90dd-30e711f79b92"
        }
      ],
      "title": "failure rate (server side errors)",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 10,
        "x": 4,
        "y": 18.25
      },
      "id": 4,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<h4>Databases</h4>",
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
            "mode": "thresholds"
          },
          "decimals": 0,
          "fieldMinMax": false,
          "mappings": [],
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "#EAB839",
                "value": 250000
              },
              {
                "color": "orange",
                "value": 300000
              },
              {
                "color": "red",
                "value": 350000
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 10,
        "x": 14,
        "y": 18.25
      },
      "id": 49,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "exemplar": false,
          "expr": "sum by(job) (sort_desc(increase(http_server_requests_count{service_namespace=~\"$namespace\", job=~\"$job\"}[$__range])))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "{{job}}",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Request Count",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "fieldMinMax": true,
          "mappings": [],
          "min": 0,
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "#EAB839",
                "value": 50
              },
              {
                "color": "orange",
                "value": 75
              },
              {
                "color": "red",
                "value": 90
              }
            ]
          },
          "unit": "s"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 5,
        "x": 4,
        "y": 19.5
      },
      "id": 5,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(job) (increase(db_client_connections_use_time_sum{service_namespace=~\"$namespace\", job=~\"$job\"}[$__range])))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Time spent in database calls",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "decimals": 0,
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
                "color": "yellow",
                "value": 100
              },
              {
                "color": "orange",
                "value": 250
              },
              {
                "color": "red",
                "value": 500
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 5,
        "x": 9,
        "y": 19.5
      },
      "id": 6,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 40,
        "minVizWidth": 75,
        "namePlacement": "top",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "manual",
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "exemplar": false,
          "expr": "sort_desc(sum by(job) (increase(db_client_connections_use_time_count{job=~\"$job\", service_namespace=~\"$namespace\"}[$__range])))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Number of calls to database",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "description": "",
      "gridPos": {
        "h": 1.25,
        "w": 24,
        "x": 0,
        "y": 24.5
      },
      "id": 67,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>CircuitBreaker</h4></center>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
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
            "fillOpacity": 25,
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
              "mode": "normal"
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
        "h": 6,
        "w": 9,
        "x": 0,
        "y": 25.75
      },
      "id": 59,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "table",
          "placement": "right",
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
          "editorMode": "builder",
          "expr": "sum by(job) (resilience4j_circuitbreaker_buffered_calls{service_namespace=~\"$namespace\", job=~\"$job\"})",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Buffered Calls",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "fieldMinMax": false,
          "mappings": [],
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 70
              },
              {
                "color": "red",
                "value": 85
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 3,
        "x": 9,
        "y": 25.75
      },
      "id": 61,
      "options": {
        "minVizHeight": 75,
        "minVizWidth": 75,
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showThresholdLabels": false,
        "showThresholdMarkers": true,
        "sizing": "auto"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "expr": "sum(resilience4j_circuitbreaker_state{state=\"closed\", service_namespace=~\"$namespace\", job=~\"$job\"})",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Number of closed CircuitBreaker",
      "type": "gauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "mappings": [],
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 70
              },
              {
                "color": "red",
                "value": 85
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 3,
        "x": 12,
        "y": 25.75
      },
      "id": 63,
      "options": {
        "minVizHeight": 75,
        "minVizWidth": 75,
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showThresholdLabels": false,
        "showThresholdMarkers": true,
        "sizing": "auto"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "expr": "sum(resilience4j_circuitbreaker_state{service_namespace=~\"$namespace\", state=\"open\", job=~\"$job\"})",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Number of open CircuitBreaker",
      "type": "gauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "continuous-GrYlRd"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 20,
            "gradientMode": "scheme",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "smooth",
            "lineWidth": 3,
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
        "h": 12,
        "w": 9,
        "x": 15,
        "y": 25.75
      },
      "id": 60,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "table",
          "placement": "right",
          "showLegend": false
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
          "editorMode": "builder",
          "expr": "sum by() (rate(resilience4j_circuitbreaker_calls_count{service_namespace=~\"$namespace\", job=~\"$job\"}[5m]))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Call Rate",
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
            "fillOpacity": 20,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "smooth",
            "lineWidth": 3,
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
        "h": 6,
        "w": 9,
        "x": 0,
        "y": 31.75
      },
      "id": 62,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "right",
          "showLegend": true
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "pluginVersion": "10.4.0-65610",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "expr": "sum by(state) (resilience4j_circuitbreaker_state{service_namespace=~\"$namespace\"})",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "CircuitBreaker States",
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
            "mode": "thresholds"
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
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 3,
        "x": 9,
        "y": 31.75
      },
      "id": 65,
      "options": {
        "minVizHeight": 75,
        "minVizWidth": 75,
        "orientation": "auto",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showThresholdLabels": false,
        "showThresholdMarkers": true,
        "sizing": "auto"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "expr": "sum(resilience4j_circuitbreaker_state{service_namespace=~\"$namespace\", state=\"half_open\", job=~\"$job\"})",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Number of half_open CircuitBreaker",
      "type": "gauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
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
                "color": "orange",
                "value": 10
              },
              {
                "color": "red",
                "value": 25
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 3,
        "x": 12,
        "y": 31.75
      },
      "id": 64,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "avg(resilience4j_circuitbreaker_failure_rate{service_namespace=~\"$namespace\", job=~\"$job\"})*-1",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Failure Rate",
      "type": "stat"
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
          },
          "unit": "reqps"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 16,
        "w": 10,
        "x": 0,
        "y": 37.75
      },
      "id": 69,
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
      "pluginVersion": "10.4.0-65610",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "topk(5, sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [5m])) by (job))",
          "format": "time_series",
          "instant": false,
          "interval": "",
          "legendFormat": "__auto",
          "range": true,
          "refId": "A"
        }
      ],
      "title": "Top APIs",
      "transformations": [
        {
          "id": "limit",
          "options": {
            "limitField": 5
          }
        }
      ],
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
            "fixedColor": "green",
            "mode": "fixed"
          },
          "custom": {
            "align": "auto",
            "cellOptions": {
              "drawStyle": "line",
              "gradientMode": "none",
              "hideValue": false,
              "showPoints": "never",
              "spanNulls": false,
              "type": "sparkline"
            },
            "filterable": true,
            "inspect": false,
            "minWidth": 300
          },
          "fieldMinMax": true,
          "mappings": [],
          "min": 0,
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
              "options": "Trend #A"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "-15d"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #B"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "-7d"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #C"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "-1d"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #D"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "-6h"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #E"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "FR -15d"
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
              "options": "Trend #F"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "FR -7d"
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
              "options": "Trend #G"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "FR -1d"
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
              "options": "Trend #H"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "FR -6h"
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
              "options": "job"
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
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 16,
        "w": 10,
        "x": 10,
        "y": 37.75
      },
      "id": 72,
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
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 15d)) by (le, job)) ",
          "instant": false,
          "legendFormat": "{{job}} -15d",
          "range": true,
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 7d)) by (le, job)) ",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} -7d",
          "range": true,
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 1d)) by (le, job)) ",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} -1d",
          "range": true,
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 6h)) by (le, job)) ",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} -6h",
          "range": true,
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\", job=~\"$job\"} [$__rate_interval] offset 15d)) by (job) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 15d)) by (job) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 15d)) by (job)",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} FR -15d",
          "range": true,
          "refId": "E"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\", job=~\"$job\"} [$__rate_interval] offset 7d)) by (job) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 7d)) by (job) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 7d)) by (job)",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} FR -7d",
          "range": true,
          "refId": "F"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\", job=~\"$job\"} [$__rate_interval] offset 1d)) by (job) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 1d)) by (job) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 1d)) by (job)",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} FR -1d",
          "range": true,
          "refId": "G"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\", job=~\"$job\"} [$__rate_interval] offset 6h)) by (job) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 6h)) by (job) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", job=~\"$job\"} [$__rate_interval] offset 6h)) by (job)",
          "hide": false,
          "instant": false,
          "legendFormat": "{{job}} FR -6h",
          "range": true,
          "refId": "H"
        }
      ],
      "title": "APIs Time Frame",
      "transformations": [
        {
          "id": "timeSeriesTable",
          "options": {
            "A": {
              "timeField": "Time"
            },
            "B": {
              "timeField": "Time"
            },
            "C": {
              "timeField": "Time"
            },
            "D": {
              "timeField": "Time"
            }
          }
        },
        {
          "id": "joinByField",
          "options": {
            "byField": "job",
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
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 4,
        "x": 20,
        "y": 37.75
      },
      "id": 76,
      "options": {
        "colorMode": "value",
        "graphMode": "none",
        "justifyMode": "auto",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "builder",
          "expr": "sum(resilience4j_circuitbreaker_slow_calls{service_namespace=~\"$namespace\", job=~\"$job\"})",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Slow calls",
      "type": "stat"
    }
  ],
  "refresh": "",
  "schemaVersion": 39,
  "tags": [],
  "templating": {
    "list": [
      {
        "current": {
          "selected": true,
          "text": [
            "All"
          ],
          "value": [
            "$__all"
          ]
        },
        "description": "${uid}, ${folder}",
        "hide": 2,
        "includeAll": true,
        "label": "Namespace",
        "multi": true,
        "name": "namespace",
        "options": [
          {
            "selected": true,
            "text": "All",
            "value": "$__all"
          },
          {
            "selected": false,
            "text": "ciam",
            "value": "ciam"
          },
          {
            "selected": false,
            "text": "CIAM",
            "value": "CIAM"
          }
        ],
        "query": "${uid}, ${folder}",
        "queryValue": "",
        "skipUrlSync": false,
        "type": "custom"
      },
      {
        "current": {
          "selected": true,
          "text": [
            "All"
          ],
          "value": [
            "$__all"
          ]
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promds}"
        },
        "definition": "label_values({service_namespace=~\"$namespace\"},job)",
        "hide": 0,
        "includeAll": true,
        "label": "Servicio",
        "multi": true,
        "name": "job",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values({service_namespace=~\"$namespace\"},job)",
          "refId": "PrometheusVariableQueryEditor-VariableQuery"
        },
        "refresh": 2,
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
  "version": 1,
  "weekStart": ""
}