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
  "id": 1267,
  "links": [],
  "panels": [
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "mappings": []
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 3,
        "x": 0,
        "y": 0
      },
      "id": 39,
      "options": {
        "autoSizeColumns": true,
        "autoSizePolygons": true,
        "autoSizeRows": true,
        "compositeConfig": {
          "animationSpeed": "1500",
          "composites": [],
          "enabled": true
        },
        "compositeGlobalAliasingEnabled": false,
        "ellipseCharacters": 18,
        "ellipseEnabled": false,
        "globalAutoScaleFonts": true,
        "globalClickthrough": "",
        "globalClickthroughCustomTarget": "",
        "globalClickthroughCustomTargetEnabled": false,
        "globalClickthroughNewTabEnabled": true,
        "globalClickthroughSanitizedEnabled": true,
        "globalDecimals": 2,
        "globalDisplayMode": "all",
        "globalDisplayTextTriggeredEmpty": "OK",
        "globalFillColor": "transparent",
        "globalFontSize": 12,
        "globalGradientsEnabled": true,
        "globalOperator": "lastNotNull",
        "globalPolygonBorderColor": "rgba(0, 0, 0, 0)",
        "globalPolygonBorderSize": 2,
        "globalPolygonSize": 25,
        "globalRegexPattern": "",
        "globalShape": "hexagon_pointed_top",
        "globalShowTooltipColumnHeadersEnabled": true,
        "globalShowValueEnabled": false,
        "globalTextFontAutoColorEnabled": true,
        "globalTextFontColor": "#000000",
        "globalTextFontFamily": "Roboto",
        "globalThresholdsConfig": [
          {
            "color": "#f53636",
            "state": 2,
            "value": 0
          },
          {
            "color": "#E0B400",
            "state": 1,
            "value": 0.5
          },
          {
            "color": "#299c46",
            "state": 0,
            "value": 1
          }
        ],
        "globalTooltipsEnabled": true,
        "globalTooltipsFontFamily": "Roboto",
        "globalTooltipsShowTimestampEnabled": true,
        "globalUnitFormat": "none",
        "layoutDisplayLimit": 100,
        "layoutNumColumns": 8,
        "layoutNumRows": 8,
        "overrideConfig": {
          "overrides": []
        },
        "sortByDirection": 1,
        "sortByField": "name",
        "tooltipDisplayMode": "all",
        "tooltipDisplayTextTriggeredEmpty": "OK",
        "tooltipPrimarySortByField": "thresholdLevel",
        "tooltipPrimarySortDirection": 1,
        "tooltipSecondarySortByField": "value",
        "tooltipSecondarySortDirection": 1
      },
      "pluginVersion": "2.1.5",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum by (node)(\r\n  kube_node_status_condition{app_group=~\"$app_group\", condition=\"Ready\", status=\"true\"} * 1\r\n) + sum by (node)(\r\n  kube_node_status_condition{app_group=~\"$app_group\", condition=\"Ready\", status=\"false\"} * 0\r\n) + sum by (node)(\r\n  kube_node_status_condition{app_group=~\"$app_group\", condition=\"Ready\", status=\"unknown\"} * .5\r\n)",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Host Health",
      "transparent": true,
      "type": "grafana-polystat-panel"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "decimals": 1,
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
                "color": "orange",
                "value": 80
              },
              {
                "color": "red",
                "value": 95
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 3,
        "y": 0
      },
      "id": 1,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 45,
        "minVizWidth": 8,
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
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": " sort_desc(max by(instance) (1 - (node_filesystem_avail_bytes{app_group=~\"$app_group\", instance=~\"$instance\"} / node_filesystem_size_bytes{app_group=~\"$app_group\", instance=~\"$instance\"})))",
          "format": "time_series",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "",
          "legendFormat": "{{instance}}",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Uso de disco (%) ",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "alias": "disk_used",
            "binary": {
              "left": "sort_desc(avg by(k8s_node_name) (disk_total))",
              "operator": "-",
              "right": "sort_desc(avg by(k8s_node_name) (disk_free))"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
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
            "mode": "percentage",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 90
              },
              {
                "color": "red",
                "value": 95
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 7,
        "y": 0
      },
      "id": 2,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 45,
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
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum(rate(node_cpu_seconds_total{mode!=\"idle\", app_group=~\"$app_group\", instance=~\"$instance\"}[5m])) by (instance))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "CPU por nodo AKS",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "decimals": 2,
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
                "color": "red",
                "value": 40
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 11,
        "y": 0
      },
      "id": 5,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 45,
        "minVizWidth": 0,
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
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(container) (rate(container_cpu_usage_seconds_total{app_group=~\"$app_group\", instance=~\"$instance\", container!=\"\"}[5m])))",
          "fullMetaSearch": false,
          "includeNullMetadata": false,
          "instant": false,
          "legendFormat": "{{instance}}",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "CPU por proceso",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "continuous-GrYlRd"
          },
          "fieldMinMax": false,
          "mappings": [],
          "min": 0,
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "dark-green",
                "value": null
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 5,
        "x": 15,
        "y": 0
      },
      "id": 9,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 45,
        "minVizWidth": 8,
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
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(node) (node_namespace_pod_container:container_memory_working_set_bytes{app_group=~\"$app_group\", instance=~\"$instance\"}))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "{{label_name}}",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Memoria por nodo AKS",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "continuous-GrYlRd"
          },
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
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 4,
        "x": 20,
        "y": 0
      },
      "id": 4,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 45,
        "minVizWidth": 8,
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
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(container) (node_namespace_pod_container:container_memory_working_set_bytes{app_group=~\"$app_group\", instance=~\"$instance\"}))",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Memoria por proceso",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 5,
        "x": 0,
        "y": 9
      },
      "id": 29,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>Network</h4></center>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 10,
        "x": 5,
        "y": 9
      },
      "id": 61,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>Cosmos Database</h4></center>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 9,
        "x": 15,
        "y": 9
      },
      "id": 28,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>Redis Cache</h4></center>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "dark-blue",
            "mode": "shades"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 80,
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
          "unit": "binBps"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Connectivity"
            },
            "properties": [
              {
                "id": "custom.scaleDistribution",
                "value": {
                  "type": "linear"
                }
              },
              {
                "id": "custom.fillOpacity",
                "value": 20
              },
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "min",
                "value": 0
              },
              {
                "id": "max",
                "value": 1
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Retransmissions"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "#e0b40091",
                  "mode": "fixed"
                }
              },
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "custom.axisColorMode",
                "value": "series"
              },
              {
                "id": "custom.scaleDistribution",
                "value": {
                  "type": "linear"
                }
              },
              {
                "id": "min",
                "value": 0
              },
              {
                "id": "custom.axisSoftMax",
                "value": 0.00005
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 7,
        "w": 5,
        "x": 0,
        "y": 10.25
      },
      "id": 32,
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
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "avg(sum by(app_group) (rate(container_network_receive_bytes_total{app_group=~\"$app_group\"}[$__rate_interval]))) + avg(sum by(app_group) (rate(container_network_transmit_bytes_total{app_group=~\"$app_group\"}[$__rate_interval])))",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": false,
          "instant": false,
          "legendFormat": "Traffic",
          "range": true,
          "refId": "A",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "editorMode": "code",
          "expr": "1 - ((sum(sum by(app_group) (container_network_receive_packets_dropped_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_dropped_total{app_group=~\"$app_group\"}))) / (sum(sum by(app_group) (container_network_receive_packets_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_total{app_group=~\"$app_group\"}))))",
          "hide": false,
          "instant": false,
          "legendFormat": "Connectivity",
          "range": true,
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "editorMode": "code",
          "expr": "((sum(sum by(app_group) (container_network_receive_packets_dropped_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_dropped_total{app_group=~\"$app_group\"}))) / (sum(sum by(app_group) (container_network_receive_packets_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_total{app_group=~\"$app_group\"}))))",
          "hide": false,
          "instant": false,
          "legendFormat": "Retransmissions",
          "range": true,
          "refId": "C"
        }
      ],
      "title": "Network Metrics",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 5,
        "y": 10.25
      },
      "id": 45,
      "options": {
        "colorMode": "background",
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
        "showPercentChange": true,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "azureMonitor": {
            "aggregation": "Count",
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
            "metricName": "TotalRequests",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "microsoft.documentdb/databaseaccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2AUTHC02",
                "resourceName": "codbeu2authc02",
                "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
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
          "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
        }
      ],
      "title": "Total requests",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Total Requests 1",
              "right": "Total Requests 2"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 7,
        "y": 10.25
      },
      "id": 46,
      "options": {
        "colorMode": "background",
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
        "showPercentChange": true,
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
            "metricName": "TotalRequestUnits",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.DocumentDB/databaseAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2AUTHC02",
                "resourceName": "codbeu2authc02",
                "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
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
          "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
        }
      ],
      "title": "Request units",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Total Request Units 1",
              "right": "Total Request Units 2"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "ms"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 9,
        "y": 10.25
      },
      "id": 47,
      "options": {
        "colorMode": "background",
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
        "showPercentChange": true,
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
              3600000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "ServerSideLatency",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "microsoft.documentdb/databaseaccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2AUTHC02",
                "resourceName": "codbeu2authc02",
                "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
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
          "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
        }
      ],
      "title": "Response time",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Server Side Latency 1",
              "right": "Server Side Latency 2"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 11,
        "y": 10.25
      },
      "id": 48,
      "options": {
        "colorMode": "background",
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
        "showPercentChange": true,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "azureMonitor": {
            "aggregation": "Average",
            "allowedTimeGrainsMs": [
              3600000
            ],
            "dimensionFilters": [],
            "metricName": "ServiceAvailability",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.DocumentDB/databaseAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2AUTHC02",
                "resourceName": "codbeu2authc02",
                "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
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
          "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
        }
      ],
      "title": "Availability",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Service Availability 1",
              "right": "Service Availability 2"
            },
            "mode": "reduceRow",
            "reduce": {
              "include": [
                "Service Availability 1",
                "Service Availability 2"
              ],
              "reducer": "mean"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "fde2fg2pnhl34d"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 13,
        "y": 10.25
      },
      "id": 49,
      "options": {
        "colorMode": "background",
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
        "showPercentChange": true,
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "title": "RU consumption",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Total Requests 1",
              "right": "Total Requests 2"
            },
            "mode": "reduceRow",
            "reduce": {
              "include": [
                "Normalized RU Consumption 1",
                "Normalized RU Consumption 2"
              ],
              "reducer": "mean"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
          },
          "decimals": 0,
          "mappings": [],
          "max": 10000,
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
        "h": 5,
        "w": 3,
        "x": 15,
        "y": 10.25
      },
      "id": 25,
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
            "alias": "",
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
            "metricName": "evictedkeys",
            "metricNamespace": "microsoft.cache/redis",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Cache/Redis",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "redieu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              }
            ],
            "timeGrain": "auto",
            "top": ""
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "queryType": "Azure Monitor",
          "refId": "A",
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "No. of evicted keys",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
          },
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
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 18,
        "y": 10.25
      },
      "id": 27,
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
            "metricName": "expiredkeys",
            "metricNamespace": "microsoft.cache/redis",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Cache/Redis",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "redieu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "No. of expired keys",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
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
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 21,
        "y": 10.25
      },
      "id": 26,
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
            "aggregation": "Maximum",
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
            "metricName": "totalkeys",
            "metricNamespace": "microsoft.cache/redis",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Cache/Redis",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "redieu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Total no. of keys",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 5,
        "y": 14.25
      },
      "id": 50,
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
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              300000,
              900000,
              1800000,
              3600000
            ],
            "dimensionFilters": [],
            "metricName": "DataUsage",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.DocumentDB/databaseAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2AUTHC02",
                "resourceName": "codbeu2authc02",
                "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
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
          "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
        }
      ],
      "title": "Data usage",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Data Usage 1",
              "right": "Data Usage 2"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 8,
        "y": 14.25
      },
      "id": 51,
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
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              300000,
              900000,
              1800000,
              3600000
            ],
            "dimensionFilters": [],
            "metricName": "IndexUsage",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.DocumentDB/databaseAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2AUTHC02",
                "resourceName": "codbeu2authc02",
                "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
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
          "subscription": "9bf3f604-5bca-4c0d-a677-1e4b2fa70732"
        }
      ],
      "title": "Index usage",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Index Usage 1",
              "right": "Index Usage 2"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
              }
            ]
          },
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 4,
        "x": 11,
        "y": 14.25
      },
      "id": 53,
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
            "aggregation": "Total",
            "allowedTimeGrainsMs": [
              300000,
              3600000,
              86400000
            ],
            "dimensionFilters": [],
            "metricName": "DocumentCount",
            "metricNamespace": "microsoft.documentdb/databaseaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.DocumentDB/databaseAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "codbeu2ntlcc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Document count",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "binary": {
              "left": "Document Count 1",
              "right": "Document Count 2"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
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
          "unit": "kbytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 15,
        "y": 15.25
      },
      "id": 23,
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
            "aggregation": "Maximum",
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
            "metricName": "usedmemory",
            "metricNamespace": "microsoft.cache/redis",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Cache/Redis",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "redieu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Used memory",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
                "value": 8000000
              }
            ]
          },
          "unit": "deckbytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 18,
        "y": 15.25
      },
      "id": 22,
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
            "aggregation": "Maximum",
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
            "metricName": "usedmemoryRss",
            "metricNamespace": "microsoft.cache/redis",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Cache/Redis",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "redieu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Used memory RSS",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
                "color": "dark-orange",
                "value": 30
              },
              {
                "color": "dark-red",
                "value": 50
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 21,
        "y": 15.25
      },
      "id": 24,
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
            "aggregation": "Maximum",
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
            "metricName": "percentProcessorTime",
            "metricNamespace": "microsoft.cache/redis",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Cache/Redis",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "redieu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Processor time",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "namespace",
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "blue",
            "mode": "shades"
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
          "unit": "binBps"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Connectivity"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "decimals",
                "value": 3
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Retransmissions"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "min",
                "value": 0
              },
              {
                "id": "max",
                "value": 0.01
              },
              {
                "id": "decimals",
                "value": 3
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 2,
        "w": 3,
        "x": 0,
        "y": 17.25
      },
      "id": 33,
      "options": {
        "colorMode": "value",
        "graphMode": "none",
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
          "titleSize": 13,
          "valueSize": 13
        },
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "avg(sum by(app_group) (rate(container_network_receive_bytes_total{app_group=~\"$app_group\"}[$__rate_interval]))) + avg(sum by(app_group) (rate(container_network_transmit_bytes_total{app_group=~\"$app_group\"}[$__rate_interval])))",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": false,
          "instant": false,
          "legendFormat": "Traffic",
          "range": true,
          "refId": "A",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "editorMode": "code",
          "expr": "1 - ((sum(sum by(app_group) (container_network_receive_packets_dropped_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_dropped_total{app_group=~\"$app_group\"}))) / (sum(sum by(app_group) (container_network_receive_packets_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_total{app_group=~\"$app_group\"}))))",
          "hide": false,
          "instant": false,
          "legendFormat": "Connectivity",
          "range": true,
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "editorMode": "code",
          "expr": "((sum(sum by(app_group) (container_network_receive_packets_dropped_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_dropped_total{app_group=~\"$app_group\"}))) / (sum(sum by(app_group) (container_network_receive_packets_total{app_group=~\"$app_group\"})) + sum(sum by(app_group) (container_network_transmit_packets_total{app_group=~\"$app_group\"}))))",
          "hide": false,
          "instant": false,
          "legendFormat": "Retransmissions",
          "range": true,
          "refId": "C"
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "namespace",
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "blue",
            "mode": "shades"
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
              "id": "byName",
              "options": "Volume"
            },
            "properties": [
              {
                "id": "unit",
                "value": "binBps"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 2,
        "w": 2,
        "x": 3,
        "y": 17.25
      },
      "id": 34,
      "options": {
        "colorMode": "value",
        "graphMode": "none",
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
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "count by(job) (container_network_receive_bytes_total{app_group=~\"$app_group\"})",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "Processes",
          "range": true,
          "refId": "A",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "count(count by(net_host_name) (container_network_transmit_bytes_total{app_group=~\"$app_group\"}))",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "Hosts",
          "range": true,
          "refId": "B",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "editorMode": "code",
          "expr": "avg(sum by(app_group) (rate(container_network_receive_bytes_total{app_group=~\"$app_group\"}[$__rate_interval]))) + avg(sum by(app_group) (rate(container_network_transmit_bytes_total{app_group=~\"$app_group\"}[$__rate_interval])))",
          "hide": false,
          "instant": false,
          "legendFormat": "Volume",
          "range": true,
          "refId": "C"
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 10,
        "x": 0,
        "y": 19.25
      },
      "id": 30,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>Database</h4></center>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "type": "text"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "gridPos": {
        "h": 1.25,
        "w": 9,
        "x": 10,
        "y": 19.25
      },
      "id": 54,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "<center><h4>Storage account</h4></center>",
        "mode": "html"
      },
      "pluginVersion": "11.2.0-72343",
      "type": "text"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
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
          "unit": "reqpm"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 0,
        "y": 20.5
      },
      "id": 62,
      "options": {
        "colorMode": "background",
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
            "metricName": "sessions_count",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Sessions",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "dtdurationms"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 2,
        "y": 20.5
      },
      "id": 63,
      "options": {
        "colorMode": "background",
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
            "metricName": "connection_successful",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCD01",
                "resourceName": "msqleu2ntlcd01/MSQLEU2NTLCDINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "rsgreu2ntlcd01",
                "resourceName": "msqleu2ntlcd02/dbsqleu2ntlcint02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCD01",
                "resourceName": "msqleu2ntlcd03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCD01",
                "resourceName": "msqleu2ntlcd04/dbsqleu2ntlcint04",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Successful connections",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "yellow",
            "mode": "thresholds"
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
          "unit": "ms"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 4,
        "y": 20.5
      },
      "id": 64,
      "options": {
        "colorMode": "background",
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
            "metricName": "connection_failed",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Failed connections (System errors)",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "/min"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 6,
        "y": 20.5
      },
      "id": 65,
      "options": {
        "colorMode": "background",
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
            "metricName": "connection_failed_user_error",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Failed connections (User errors)",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "max": 1000,
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
          "unit": "/min"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 2,
        "x": 8,
        "y": 20.5
      },
      "id": 66,
      "options": {
        "colorMode": "background",
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
            "metricName": "blocked_by_firewall",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Firewall blocks",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
          },
          "decimals": 0,
          "mappings": [],
          "max": 10000,
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
        "h": 5,
        "w": 3,
        "x": 10,
        "y": 20.5
      },
      "id": 55,
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
            "aggregation": "Average",
            "alias": "",
            "allowedTimeGrainsMs": [
              3600000
            ],
            "dimensionFilters": [],
            "metricName": "UsedCapacity",
            "metricNamespace": "microsoft.storage/storageaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Storage/storageAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "staceu2ntlcfnctc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              }
            ],
            "timeGrain": "auto",
            "top": ""
          },
          "datasource": {
            "type": "grafana-azure-monitor-datasource",
            "uid": "edgv7ueibpvr4f"
          },
          "queryType": "Azure Monitor",
          "refId": "A",
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Capacity used",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
          },
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
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 13,
        "y": 20.5
      },
      "id": 56,
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
            "metricName": "Transactions",
            "metricNamespace": "microsoft.storage/storageaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Storage/storageAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "staceu2ntlcfnctc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Transactions",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
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
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 16,
        "y": 20.5
      },
      "id": 57,
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
            "metricName": "Ingress",
            "metricNamespace": "microsoft.storage/storageaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Storage/storageAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "staceu2ntlcfnctc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Ingress",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
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
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 0,
        "y": 24.5
      },
      "id": 67,
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
            "metricName": "cpu_percent",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "CPU percentage",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
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
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 3,
        "x": 3,
        "y": 24.5
      },
      "id": 68,
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
            "aggregation": "Maximum",
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
            "metricName": "storage",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Total database size",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 2,
        "x": 6,
        "y": 24.5
      },
      "id": 69,
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
            "aggregation": "Maximum",
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
            "metricName": "storage_percent",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Database size percentage",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 2,
        "x": 8,
        "y": 24.5
      },
      "id": 70,
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
            "metricName": "dtu_consumption_percent",
            "metricNamespace": "microsoft.sql/servers/databases",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc03/dbsqleu2ntlcint03",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc02/msqleu2ntlcc02",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
              },
              {
                "metricNamespace": "Microsoft.Sql/servers/databases",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "msqleu2ntlcc01/MSQLEU2NTLCCINT01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "DTU percentage",
      "transformations": [
        {
          "id": "calculateField",
          "options": {
            "alias": "4xx and 5xx errors",
            "binary": {
              "left": "sum(http_server_requests_count{status=~\"400|401|404|409|412|500|503\"})",
              "operator": "/",
              "right": "sum(http_server_requests_count)"
            },
            "mode": "binary",
            "reduce": {
              "reducer": "sum"
            },
            "replaceFields": true
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "continuous-GrYlRd"
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
          "unit": "kbytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 10,
        "y": 25.5
      },
      "id": 58,
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
            "metricName": "Availability",
            "metricNamespace": "microsoft.storage/storageaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Storage/storageAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "staceu2ntlcfnctc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Availability",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
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
                "value": 8000000
              }
            ]
          },
          "unit": "deckbytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 13,
        "y": 25.5
      },
      "id": 59,
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
            "metricName": "SuccessServerLatency",
            "metricNamespace": "microsoft.storage/storageaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Storage/storageAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "staceu2ntlcfnctc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Success Server Latency",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "grafana-azure-monitor-datasource",
        "uid": "edgv7ueibpvr4f"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "fixed"
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
                "color": "dark-orange",
                "value": 30
              },
              {
                "color": "dark-red",
                "value": 50
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 16,
        "y": 25.5
      },
      "id": 60,
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
            "metricName": "Egress",
            "metricNamespace": "microsoft.storage/storageaccounts",
            "region": "eastus2",
            "resources": [
              {
                "metricNamespace": "Microsoft.Storage/storageAccounts",
                "region": "eastus2",
                "resourceGroup": "RSGREU2NTLCC01",
                "resourceName": "staceu2ntlcfnctc01",
                "subscription": "918847a9-b797-4132-959b-939175cb64b4"
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
          "subscription": "918847a9-b797-4132-959b-939175cb64b4"
        }
      ],
      "title": "Egress",
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
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
              "options": "Trend #A"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "CPU Usado"
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
              "options": "Trend #B"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "AVG"
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
              "options": "Trend #C"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "MAX CPU"
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
              "options": "k8s_pod_name"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "POD"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 0,
        "y": 29.5
      },
      "id": 35,
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
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate{namespace=~\"$namespace\"}) by (pod)",
          "format": "time_series",
          "fullMetaSearch": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "avg by(pod) (node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate{namespace=~\"$namespace\"})",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "B",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "max by(pod) (node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate{namespace=~\"$namespace\"})",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "legendFormat": "__auto",
          "range": true,
          "refId": "C",
          "useBackend": false
        }
      ],
      "title": "PODS CPU",
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
            }
          }
        },
        {
          "id": "joinByField",
          "options": {
            "byField": "pod",
            "mode": "outer"
          }
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "",
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
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 8,
        "y": 29.5
      },
      "id": 36,
      "options": {
        "displayMode": "gradient",
        "maxVizHeight": 300,
        "minVizHeight": 16,
        "minVizWidth": 8,
        "namePlacement": "auto",
        "orientation": "horizontal",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": true,
        "sizing": "auto",
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0-72343",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(sum by(pod) (rate(container_cpu_usage_seconds_total{image!=\"\", app_group=~\"$app_group\", container!=\"\"}[5m])))",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": true,
          "legendFormat": "__auto",
          "range": false,
          "refId": "B",
          "useBackend": false
        }
      ],
      "title": "Pods top CPU",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promcert}"
      },
      "description": "*",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            }
          },
          "mappings": [],
          "min": 0,
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 16,
        "y": 29.5
      },
      "id": 37,
      "options": {
        "displayLabels": [
          "name"
        ],
        "legend": {
          "displayMode": "table",
          "placement": "right",
          "showLegend": true,
          "values": [
            "value"
          ]
        },
        "pieType": "donut",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "tooltip": {
          "maxHeight": 600,
          "mode": "single",
          "sort": "none"
        }
      },
      "pluginVersion": "11.0.0-67746",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promcert}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "exemplar": false,
          "expr": "sort_desc(count by(namespace) (kube_pod_info{app_group=~\"$app_group\", pod!=\"\"}))",
          "fullMetaSearch": false,
          "includeNullMetadata": false,
          "instant": false,
          "interval": "",
          "legendFormat": "__auto",
          "range": true,
          "refId": "A",
          "useBackend": false
        }
      ],
      "title": "Pods running",
      "type": "piechart"
    }
  ],
  "schemaVersion": 39,
  "tags": [],
  "templating": {
    "list": [
      {
        "current": {
          "selected": false,
          "text": "All",
          "value": "$__all"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promcert}"
        },
        "definition": "label_values(app_group)",
        "hide": 2,
        "includeAll": true,
        "label": "CodApp",
        "multi": true,
        "name": "app_group",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(app_group)",
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
          "uid": "$${promcert}"
        },
        "definition": "label_values(instance)",
        "hide": 2,
        "includeAll": true,
        "label": "instance",
        "multi": true,
        "name": "instance",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(instance)",
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
          "text": "All",
          "value": "$__all"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promcert}"
        },
        "definition": "label_values(job)",
        "hide": 2,
        "includeAll": true,
        "label": "job",
        "multi": true,
        "name": "job",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(job)",
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
          "text": "ntlc",
          "value": "ntlc"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promcert}"
        },
        "definition": "label_values(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate,namespace)",
        "hide": 2,
        "includeAll": false,
        "multi": false,
        "name": "namespace",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate,namespace)",
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
          "text": "Cloud Prometheus: ntlc-cer-ntlc_token",
          "value": "edfnnqy3q3nk0e"
        },
        "hide": 2,
        "includeAll": false,
        "multi": false,
        "name": "promcert",
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
    "from": "now-12h",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "browser",
  "title": "${dashboard_title}",
  "uid": "${uid}",
  "weekStart": ""
}