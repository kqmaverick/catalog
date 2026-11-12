{{- define "qbitrr.webui.portal" -}}
{{- $ingressEnabled := .Values.ingress.main.enabled -}}
{{- $externalService := ne .Values.service.main.type "ClusterIP" -}}
{{- $_ := set .Values.portal.open "enabled" (or $ingressEnabled $externalService) -}}
{{- end -}}
