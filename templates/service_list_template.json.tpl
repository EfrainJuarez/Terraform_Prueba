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
  "id": 441,
  "links": [],
  "liveNow": false,
  "panels": [
    {
      "datasource": {
        "type": "prometheus",
        "uid": "$${promds}"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "fixedColor": "orange",
            "mode": "fixed"
          },
          "custom": {
            "align": "center",
            "cellOptions": {
              "fillOpacity": 0,
              "gradientMode": "none",
              "lineInterpolation": "linear",
              "lineStyle": {
                "dash": [
                  10,
                  10
                ],
                "fill": "solid"
              },
              "lineWidth": 2,
              "showPoints": "never",
              "type": "sparkline"
            },
            "filterable": true,
            "inspect": true
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
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #Rate"
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
              "id": "byName",
              "options": "Trend #Duration"
            },
            "properties": [
              {
                "id": "displayName",
                "value": "Duration, p95"
              },
              {
                "id": "mappings",
                "value": [
                  {
                    "options": {
                      "from": 0,
                      "result": {
                        "index": 0,
                        "text": "<1ms"
                      },
                      "to": 1
                    },
                    "type": "range"
                  }
                ]
              },
              {
                "id": "unit",
                "value": "ms"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Trend #Errors"
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
              "options": "job"
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
                "value": "Name"
              },
              {
                "id": "links",
                "value": [
                  {
                    "targetBlank": true,
                    "title": "More details",
                    "url": "d/${uid_overview}/${overview_name}?orgId=1&var-job=$${__data.fields.job}&var-service=$${__data.fields.servicios}&var-namespace=$${__data.fields.namespace}"
                  }
                ]
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "servicios"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "auto"
                }
              },
              {
                "id": "custom.hidden",
                "value": true
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "namespace"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "auto"
                }
              },
              {
                "id": "custom.hidden",
                "value": true
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
                "value": "ms"
              },
              {
                "id": "mappings",
                "value": [
                  {
                    "options": {
                      "from": 0,
                      "result": {
                        "index": 0,
                        "text": "<1ms"
                      },
                      "to": 1
                    },
                    "type": "range"
                  }
                ]
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 22,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 1,
      "options": {
        "cellHeight": "lg",
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
        "showHeader": true,
        "sortBy": [
          {
            "desc": true,
            "displayName": "client"
          }
        ]
      },
      "pluginVersion": "11.2.0-72125",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "histogram_quantile(0.95, sum by(le, job) (rate({__name__=~\"traces_spanmetrics_latency_bucket\", span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\"}[$__rate_interval])))",
          "format": "time_series",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "300s",
          "legendFormat": "__auto",
          "range": true,
          "refId": "Duration",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "editorMode": "code",
          "expr": "label_replace(label_replace(sum(increase({__name__=~\"traces_spanmetrics_latency_sum\"}[$__range])) by (job) / sum(increase({__name__=~\"traces_spanmetrics_latency_count\"}[$__range])) by (job), \"servicios\", \"$1\", \"job\", \".*/([^/]+)$\"), \"namespace\", \"$1\", \"job\", \"^^(.*?)/(.*)$\")",
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
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "(sum(rate({__name__=~\"traces_spanmetrics_latency_count\",span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\", status_code=\"STATUS_CODE_ERROR\"} [$__rate_interval])) by (job) OR sum(rate({__name__=~\"traces_spanmetrics_latency_count\",span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\"} [$__rate_interval])) by (job) * 0) / sum(rate({__name__=~\"traces_spanmetrics_latency_count\",span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\"} [$__rate_interval])) by (job)",
          "format": "time_series",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "300s",
          "legendFormat": "__auto",
          "range": true,
          "refId": "Errors",
          "useBackend": false
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "$${promds}"
          },
          "disableTextWrap": false,
          "editorMode": "code",
          "expr": "sum by(job) (rate({__name__=~\"traces_spanmetrics_latency_count\",span_kind=~\"SPAN_KIND_SERVER|SPAN_KIND_CONSUMER\", deployment_environment=~\".*\"}[$__rate_interval]))",
          "format": "time_series",
          "fullMetaSearch": false,
          "hide": false,
          "includeNullMetadata": true,
          "instant": false,
          "interval": "1m",
          "legendFormat": "servicenamecustom",
          "range": true,
          "refId": "Rate",
          "useBackend": false
        }
      ],
      "title": "Services",
      "transformations": [
        {
          "id": "timeSeriesTable",
          "options": {
            "A": {
              "stat": "lastNotNull",
              "timeField": "Time"
            },
            "B": {
              "timeField": "Time"
            },
            "C": {
              "timeField": "Time"
            },
            "Duration": {
              "stat": "mean",
              "timeField": "Time"
            },
            "Errors": {
              "stat": "mean",
              "timeField": "Time"
            },
            "Rate": {
              "stat": "lastNotNull",
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
        },
        {
          "id": "renameByRegex",
          "options": {
            "regex": "^[^/]*/",
            "renamePattern": "$1"
          }
        }
      ],
      "transparent": true,
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
      },
      {
        "datasource": {
          "type": "prometheus",
          "uid": "$${promds}"
        },
        "filters": [],
        "hide": 0,
        "name": "Filtros",
        "skipUrlSync": false,
        "type": "adhoc"
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
  "weekStart": ""
}