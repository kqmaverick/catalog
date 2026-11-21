{{- define "browserless.v2.migrate" -}}
{{- $env := .Values.workload.main.podSpec.containers.main.env -}}
{{- if hasKey $env "WORKSPACE_DIR" -}}
{{- $_ := set $env "DOWNLOAD_DIR" (get $env "WORKSPACE_DIR") -}}
{{- $_ := unset $env "WORKSPACE_DIR" -}}
{{- end -}}
{{- if hasKey $env "MAX_CONCURRENT_SESSIONS" -}}
{{- $_ := set $env "CONCURRENT" (get $env "MAX_CONCURRENT_SESSIONS") -}}
{{- $_ := unset $env "MAX_CONCURRENT_SESSIONS" -}}
{{- end -}}
{{- if hasKey $env "MAX_QUEUE_LENGTH" -}}
{{- $_ := set $env "QUEUED" (get $env "MAX_QUEUE_LENGTH") -}}
{{- $_ := unset $env "MAX_QUEUE_LENGTH" -}}
{{- end -}}
{{- if hasKey $env "CONNECTION_TIMEOUT" -}}
{{- $_ := set $env "TIMEOUT" (get $env "CONNECTION_TIMEOUT") -}}
{{- $_ := unset $env "CONNECTION_TIMEOUT" -}}
{{- end -}}
{{- if hasKey $env "ENABLE_API_GET" -}}
{{- $_ := set $env "ALLOW_GET" (get $env "ENABLE_API_GET") -}}
{{- $_ := unset $env "ENABLE_API_GET" -}}
{{- end -}}
{{- if hasKey $env "ENABLE_CORS" -}}
{{- $_ := set $env "CORS" (get $env "ENABLE_CORS") -}}
{{- $_ := unset $env "ENABLE_CORS" -}}
{{- end -}}
{{- $_ := unset $env "WORKSPACE_DELETE_EXPIRED" -}}
{{- $_ := unset $env "WORKSPACE_EXPIRE_DAYS" -}}
{{- $_ := unset $env "CHROME_REFRESH_TIME" -}}
{{- $_ := unset $env "DEFAULT_BLOCK_ADS" -}}
{{- $_ := unset $env "DEFAULT_HEADLESS" -}}
{{- $_ := unset $env "DEFAULT_IGNORE_HTTPS_ERRORS" -}}
{{- $_ := unset $env "DEFAULT_IGNORE_DEFAULT_ARGS" -}}
{{- $_ := unset $env "FUNCTION_ENABLE_INCOGNITO_MODE" -}}
{{- $_ := unset $env "EXIT_ON_HEALTH_FAILURE" -}}
{{- $_ := unset $env "DISABLE_AUTO_SET_DOWNLOAD_BEHAVIOR" -}}
{{- $_ := unset $env "ENABLE_XVBF" -}}
{{- $_ := unset $env "KEEP_ALIVE" -}}
{{- $_ := unset $env "PREBOOT_CHROME" -}}
{{- if not (get $env "HOST") -}}
{{- $_ := set $env "HOST" "0.0.0.0" -}}
{{- end -}}
{{- if not (get $env "EXTERNAL") -}}
{{- $_ := set $env "EXTERNAL" (printf "http://%s.%s.svc.cluster.local:%v" (include "tc.v1.common.lib.chart.names.fullname" .) .Release.Namespace .Values.service.main.ports.main.port) -}}
{{- end -}}
{{- end -}}
