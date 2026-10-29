{{- define "backstage.selectorLabels" -}}
app.kubernetes.io/name: backstage
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "backstage.labels" -}}
{{ include "backstage.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
