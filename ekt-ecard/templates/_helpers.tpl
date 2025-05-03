{{- define "ekt-ecard.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ekt-ecard.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "ekt-ecard.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}



