{{- define "getCertificateArn" -}}
{{- $secret := (lookup "v1" "Secret" .Release.Namespace .Values.externalSecret.target.name) -}}
{{- if $secret -}}
{{- index $secret.data "CERTIFICATE_ARN" | b64dec -}}
{{- else -}}
{{- fail "Secret not found or CERTIFICATE_ARN not available" -}}
{{- end -}}
{{- end -}}
