{{/*
Retained TrueNAS form values can contain the previous version's default digest.
Refresh only that exact official repository/digest pair. Other choices retain
the upstream image formatting and must pass the configured preflight.
*/}}
{{- define "image" -}}
{{- $defaultTag := index . 1 -}}
{{- with index . 0 -}}
{{- $repo := .repository -}}
{{- if .registry -}}{{- $repo = printf "%s/%s" .registry .repository -}}{{- end -}}
{{- $refresh := dict
  "quay.io/jetstack/cert-manager-controller@sha256:189920e5752ec7d56a6329347969d847bfd867c07119873c849f300795a0be7b" "quay.io/jetstack/cert-manager-controller@sha256:6e5c14c077b98bd68c856d204e52b6066c4600ebdb1367ad323c356f21af3924"
  "quay.io/jetstack/cert-manager-cainjector@sha256:0f7dcc7ca23dc95c32323ddd7b638c3fa318662985378360a1aeb9c72473e147" "quay.io/jetstack/cert-manager-cainjector@sha256:fca4653092651e1c41605ef470330de64e0c2fa9d07568c91118ecbc2eb73a04"
  "quay.io/jetstack/cert-manager-webhook@sha256:1e4711c91ea4c45baab763bec3875528847f8221a577aa81b325cac49d68cd09" "quay.io/jetstack/cert-manager-webhook@sha256:141302a189f6ba688eae6ba3e47fa05743fc27cdb90112cbc8531b89e8db8a9b"
  "quay.io/jetstack/cert-manager-acmesolver@sha256:d1c5cc961ba68c341c482554a9e0f3b776394216b2150adf8b5328379c72dc3e" "quay.io/jetstack/cert-manager-acmesolver@sha256:311e4f467bc2d395be893062df333f7bfa56d9926071de4b1a7a776cdadf8db1"
  "quay.io/jetstack/cert-manager-startupapicheck@sha256:331daccfadd3154b5da8c520f09f5e51f57348a935e3fecd3aca16b965711a10" "quay.io/jetstack/cert-manager-startupapicheck@sha256:d35b8ee060fa998e6902c825e7f64bb466196ed542830dcd5d773b9a71c9442b"
-}}
{{- $selected := printf "%s@%s" $repo (default "" .digest) -}}
{{- if hasKey $refresh $selected -}}
{{- index $refresh $selected -}}
{{- else -}}
{{- $repo -}}
{{- if .digest -}}{{ printf "@%s" .digest }}{{- else -}}{{ printf ":%s" (default $defaultTag .tag) }}{{- end -}}
{{- end -}}
{{- end -}}
{{- end -}}
