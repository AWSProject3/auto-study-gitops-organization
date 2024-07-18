{{/*{{- define "getCertificateArn" -}}*/}}
{{/*{{- $secret := (lookup "v1" "Secret" .Release.Namespace .Values.externalSecret.target.name) -}}*/}}
{{/*{{- if and $secret (index $secret.data "CERTIFICATE_ARN") -}}*/}}
{{/*{{- index $secret.data "CERTIFICATE_ARN" | b64dec -}}*/}}
{{/*{{- else -}}*/}}
{{/*{{- printf "pending-certificate-arn" -}}*/}}
{{/*{{- end -}}*/}}
{{/*{{- end -}}*/}}
