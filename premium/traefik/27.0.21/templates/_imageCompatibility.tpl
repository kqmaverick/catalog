{{/* The official image does not contain the old TrueCharts local plugin bundle. */}}
{{- define "traefik.imageCompatibility" -}}
{{- $selector := .Values.workload.main.podSpec.containers.main.imageSelector | default "image" -}}
{{- $image := get .Values $selector | default dict -}}
{{- if has $image.repository (list "docker.io/library/traefik" "docker.io/traefik" "library/traefik" "traefik") -}}
{{- range $name := list "themePark" "geoBlock" "realIP" "modsecurity" "bouncer" "rewriteResponseHeaders" -}}
{{- if get $.Values.middlewares $name -}}
{{- fail (printf "The official Traefik image does not bundle the TrueCharts local plugin used by middlewares.%s. Use a separately prepared compatible plugin image before enabling this setting." $name) -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- end -}}
