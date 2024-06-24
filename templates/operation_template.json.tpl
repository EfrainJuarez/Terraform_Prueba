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
  "graphTooltip": 2,
  "id": 446,
  "links": [],
  "liveNow": false,
  "panels": [
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "gridPos": {
        "h": 3,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 5,
      "options": {
        "code": {
          "language": "plaintext",
          "showLineNumbers": false,
          "showMiniMap": false
        },
        "content": "# $${job} \r\n## $${span}",
        "mode": "markdown"
      },
      "pluginVersion": "11.2.0-72125",
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
          "unit": "s"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 0,
        "y": 3
      },
      "id": 1,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
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
          "editorMode": "code",
          "expr": "histogram_quantile(0.95, sum(rate(traces_spanmetrics_latency_bucket{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", span_name=\"$span\", deployment_environment=~\".*\"} [6m0s])) by (le,job))",
          "instant": false,
          "interval": "5m",
          "legendFormat": "P95",
          "range": true,
          "refId": "A"
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
        "y": 3
      },
      "id": 2,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
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
          "editorMode": "code",
          "expr": "(sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", span_name=\"$span\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\"} [6m0s])) by (job) OR sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", span_name=\"$span\", deployment_environment=~\".*\"} [6m0s])) by (job) * 0) / sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", span_name=\"$span\", deployment_environment=~\".*\"} [6m0s])) by (job)",
          "instant": false,
          "interval": "5m",
          "legendFormat": "Errors",
          "range": true,
          "refId": "A"
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
        "h": 8,
        "w": 8,
        "x": 16,
        "y": 3
      },
      "id": 3,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
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
          "editorMode": "code",
          "expr": "sum(rate(traces_spanmetrics_latency_count{span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", span_name=\"$span\", deployment_environment=~\".*\"} [6m0s])) by (job)",
          "instant": false,
          "interval": "5m",
          "legendFormat": "Rate",
          "range": true,
          "refId": "A"
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
          },
          "unit": "none"
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
          }
        ]
      },
      "gridPos": {
        "h": 11,
        "w": 24,
        "x": 0,
        "y": 11
      },
      "id": 4,
      "interval": "5m",
      "maxDataPoints": 200,
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
      "pluginVersion": "11.2.0-72125",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(increase(traces_spanmetrics_latency_bucket{deployment_environment=~\".*\", span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", job=\"$job\", span_name=\"$span\"}[$__range])) by (le)",
          "format": "heatmap",
          "instant": false,
          "interval": "5m",
          "legendFormat": "{{le}}",
          "range": true,
          "refId": "A"
        }
      ],
      "type": "bargauge"
    }
  ],
  "refresh": "",
  "schemaVersion": 39,
  "tags": [],
  "templating": {
    "list": [
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
        "definition": "label_values()",
        "hide": 2,
        "includeAll": false,
        "label": "job",
        "multi": false,
        "name": "job",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values()",
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
          "text": "AzureTableTables.insertEntity",
          "value": "AzureTableTables.insertEntity"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "$${promds}"
        },
        "definition": "label_values(span_name)",
        "hide": 2,
        "includeAll": false,
        "label": "span",
        "multi": false,
        "name": "span",
        "options": [],
        "query": {
          "qryType": 1,
          "query": "label_values(span_name)",
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
          "text": "Cloud Prometheus: cptd-cer-cptd_token",
          "value": "bddl5l5ay33swb"
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
    "from": "now-6h",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "${dashboard_title}",
  "uid": "${uid}",
  "weekStart": ""
}