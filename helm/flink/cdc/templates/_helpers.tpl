{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "app.name" -}}
{{- printf "%s-%s" .Values.pipelineConfig.source.name .Values.pipelineConfig.sink.name  | trunc 63 | trimSuffix "-" -}}
{{- end -}}