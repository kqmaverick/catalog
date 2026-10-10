{{- define "browserless.runtime.identity" -}}
{{- $main := .Values.workload.main.podSpec.containers.main -}}
{{- $init := index .Values.workload.main.podSpec.initContainers "prepare-identity" -}}
{{- $_ := set $init "imageSelector" $main.imageSelector -}}
{{- with $main.securityContext -}}
{{- $_ := set $init "securityContext" (mustDeepCopy .) -}}
{{- end -}}
{{- end -}}
