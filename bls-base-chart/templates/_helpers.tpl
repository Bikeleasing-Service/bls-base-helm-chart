{{/*
Return the fully qualified app name.
*/}}
{{- define "bls-base-chart.fullname" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{/*
Return the namespace for the resources.
*/}}
{{- define "bls-base-chart.namespace" -}}
{{- .Release.Namespace -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "bls-base-chart.labels" -}}
helm.sh/chart: {{ include "bls-base.chart" . }}
{{ include "bls-base.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
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



{{/*
Create the name of the service account to use
*/}}
{{- define "bls-base-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "bls-base.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}






{{/*
Expand the name of the chart.
*/}}
{{- define "springboot-helm-chart.name" -}}

{{- end }}




