
{{/*
Common labels
*/}}
{{- define "bls-base-chart.labels" -}}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "bls-base-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "bls-base.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Chart name and version
*/}}
{{- define "bls-base-chart.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Name
*/}}
{{- define "bls-base-chart.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Environment tags
*/}}

{{- define "bls-base-chart.envTags" -}}
tags.datadoghq.com/env: {{ .Values.environment }}
tags.datadoghq.com/service: {{ .Values.name }}
tags.datadoghq.com/project: {{ .Values.project }}
{{- end -}}




