{{/* Refresh only verified previous official image defaults; preserve the upstream four-argument formatter otherwise. */}}
{{- define "cert-manager.image" -}}
{{- /*
Calling convention:

- (tuple <imageValues> <imageRegistry> <imageNamespace> <defaultReference>)

We intentionally pass imageRegistry/imageNamespace as explicit arguments rather than reading
from `.Values` inside this helper, because `helm-tool lint` does not reliably track `.Values.*`
usage through tuple/variable indirection.
*/ -}}

{{- if ne (len .) 4 -}}
    {{- fail (printf "ERROR: template \"cert-manager.image\" expects (tuple <imageValues> <imageRegistry> <imageNamespace> <defaultReference>), got %d arguments" (len .)) -}}
{{- end -}}

{{- $image := index . 0 -}}
{{- $imageRegistry := index . 1 | default "" -}}
{{- $imageNamespace := index . 2 | default "" -}}
{{- $defaultReference := index . 3 -}}

{{- $repository := "" -}}
{{- if $image.repository -}}
    {{- $repository = $image.repository -}}

    {{- /*
        Backwards compatibility: if image.registry is set, additionally prefix the repository with this registry.
    */ -}}
    {{- if $image.registry -}}
        {{- $repository = printf "%s/%s" $image.registry $repository -}}
    {{- end -}}
{{- else -}}
    {{- $name := required "ERROR: image.name must be set when image.repository is empty" $image.name -}}
    {{- $repository = $name -}}

    {{- if $imageNamespace -}}
        {{- $repository = printf "%s/%s" $imageNamespace $repository -}}
    {{- end -}}

    {{- if $imageRegistry -}}
        {{- $repository = printf "%s/%s" $imageRegistry $repository -}}
    {{- end -}}

    {{- /*
        Backwards compatibility: if image.registry is set, additionally prefix the repository with this registry.
    */ -}}
    {{- if $image.registry -}}
        {{- $repository = printf "%s/%s" $image.registry $repository -}}
    {{- end -}}
{{- end -}}

{{- $refresh := dict
  "quay.io/jetstack/cert-manager-controller@sha256:189920e5752ec7d56a6329347969d847bfd867c07119873c849f300795a0be7b" "quay.io/jetstack/cert-manager-controller@sha256:9f4f96a33c7774cef24466fcd85031997531a03a8d117f151126baa8d1290dcc"
  "quay.io/jetstack/cert-manager-cainjector@sha256:0f7dcc7ca23dc95c32323ddd7b638c3fa318662985378360a1aeb9c72473e147" "quay.io/jetstack/cert-manager-cainjector@sha256:083d0e906f8eb44e255fe4ff817ae54e49f9ed82e22f1011bb4e9e4f4b8a641f"
  "quay.io/jetstack/cert-manager-webhook@sha256:1e4711c91ea4c45baab763bec3875528847f8221a577aa81b325cac49d68cd09" "quay.io/jetstack/cert-manager-webhook@sha256:055ac8e9de6a0ba6763794838fe38944acc650f68ebe1b01dd8be079e580f458"
  "quay.io/jetstack/cert-manager-acmesolver@sha256:d1c5cc961ba68c341c482554a9e0f3b776394216b2150adf8b5328379c72dc3e" "quay.io/jetstack/cert-manager-acmesolver@sha256:c8c1225bb2fe8ab37a330b77f0d8c2ee6a41210fcb54fc07ca606ab9a022b8b7"
  "quay.io/jetstack/cert-manager-startupapicheck@sha256:331daccfadd3154b5da8c520f09f5e51f57348a935e3fecd3aca16b965711a10" "quay.io/jetstack/cert-manager-startupapicheck@sha256:1c519d4afca1413d1e4ccd78bdc756184418ab55a34569a3b3de39d32f9974e1"
  "quay.io/jetstack/cert-manager-controller@sha256:6e5c14c077b98bd68c856d204e52b6066c4600ebdb1367ad323c356f21af3924" "quay.io/jetstack/cert-manager-controller@sha256:9f4f96a33c7774cef24466fcd85031997531a03a8d117f151126baa8d1290dcc"
  "quay.io/jetstack/cert-manager-cainjector@sha256:fca4653092651e1c41605ef470330de64e0c2fa9d07568c91118ecbc2eb73a04" "quay.io/jetstack/cert-manager-cainjector@sha256:083d0e906f8eb44e255fe4ff817ae54e49f9ed82e22f1011bb4e9e4f4b8a641f"
  "quay.io/jetstack/cert-manager-webhook@sha256:141302a189f6ba688eae6ba3e47fa05743fc27cdb90112cbc8531b89e8db8a9b" "quay.io/jetstack/cert-manager-webhook@sha256:055ac8e9de6a0ba6763794838fe38944acc650f68ebe1b01dd8be079e580f458"
  "quay.io/jetstack/cert-manager-acmesolver@sha256:311e4f467bc2d395be893062df333f7bfa56d9926071de4b1a7a776cdadf8db1" "quay.io/jetstack/cert-manager-acmesolver@sha256:c8c1225bb2fe8ab37a330b77f0d8c2ee6a41210fcb54fc07ca606ab9a022b8b7"
  "quay.io/jetstack/cert-manager-startupapicheck@sha256:d35b8ee060fa998e6902c825e7f64bb466196ed542830dcd5d773b9a71c9442b" "quay.io/jetstack/cert-manager-startupapicheck@sha256:1c519d4afca1413d1e4ccd78bdc756184418ab55a34569a3b3de39d32f9974e1"
  "quay.io/jetstack/cert-manager-controller@sha256:c6a328f6095a02731e943c95d5e61bdc3b87373cc9fbd915f73d8615cda766f9" "quay.io/jetstack/cert-manager-controller@sha256:9f4f96a33c7774cef24466fcd85031997531a03a8d117f151126baa8d1290dcc"
  "quay.io/jetstack/cert-manager-cainjector@sha256:f7ce571e372f28229cab2e07c803e2dc0b37c5642818a097ab42a19af182a329" "quay.io/jetstack/cert-manager-cainjector@sha256:083d0e906f8eb44e255fe4ff817ae54e49f9ed82e22f1011bb4e9e4f4b8a641f"
  "quay.io/jetstack/cert-manager-webhook@sha256:c4b7103d6c1edb196ee448660835b9a5d0fb3f9064019d881fd56e94859df288" "quay.io/jetstack/cert-manager-webhook@sha256:055ac8e9de6a0ba6763794838fe38944acc650f68ebe1b01dd8be079e580f458"
  "quay.io/jetstack/cert-manager-acmesolver@sha256:a43400e59456cd55b0b327cc38bb3ff0a55d5e6011f0301ec9c82c800285da0c" "quay.io/jetstack/cert-manager-acmesolver@sha256:c8c1225bb2fe8ab37a330b77f0d8c2ee6a41210fcb54fc07ca606ab9a022b8b7"
  "quay.io/jetstack/cert-manager-startupapicheck@sha256:20bc1106514032737873e8d46afacfbcc61d6ffe0e29f47b9d914b28e18ad521" "quay.io/jetstack/cert-manager-startupapicheck@sha256:1c519d4afca1413d1e4ccd78bdc756184418ab55a34569a3b3de39d32f9974e1"
  "quay.io/jetstack/cert-manager-controller@sha256:d4d576c7e6ed3cfe5730f5458fa096b7d8713368d2ccb7ff01b2951861483838" "quay.io/jetstack/cert-manager-controller@sha256:9f4f96a33c7774cef24466fcd85031997531a03a8d117f151126baa8d1290dcc"
  "quay.io/jetstack/cert-manager-cainjector@sha256:30c8617ebb3b4a9054da555ee9c6389a7faa464fffe3c7679f80892a9cfbf213" "quay.io/jetstack/cert-manager-cainjector@sha256:083d0e906f8eb44e255fe4ff817ae54e49f9ed82e22f1011bb4e9e4f4b8a641f"
  "quay.io/jetstack/cert-manager-webhook@sha256:303a962e77acbed075716379ed8045de65a72fdd5514f9367f449a1f9a907aa7" "quay.io/jetstack/cert-manager-webhook@sha256:055ac8e9de6a0ba6763794838fe38944acc650f68ebe1b01dd8be079e580f458"
  "quay.io/jetstack/cert-manager-acmesolver@sha256:bbec214d3935cbbeb3ab88c57ee36e2b2511a0017e48ffc14a999e48fa30d3a2" "quay.io/jetstack/cert-manager-acmesolver@sha256:c8c1225bb2fe8ab37a330b77f0d8c2ee6a41210fcb54fc07ca606ab9a022b8b7"
  "quay.io/jetstack/cert-manager-startupapicheck@sha256:83e70f57255e133e2fff5129e8372ac493ca66e39446c536798b4742d95f9f49" "quay.io/jetstack/cert-manager-startupapicheck@sha256:1c519d4afca1413d1e4ccd78bdc756184418ab55a34569a3b3de39d32f9974e1"
-}}
{{- $selected := printf "%s@%s" $repository (default "" $image.digest) -}}
{{- if hasKey $refresh $selected -}}
{{- index $refresh $selected -}}
{{- else -}}
{{- $repository -}}
{{- if and $image.tag $image.digest -}}
    {{- printf ":%s@%s" $image.tag $image.digest -}}
{{- else if $image.tag -}}
    {{- printf ":%s" $image.tag -}}
{{- else if $image.digest -}}
    {{- printf "@%s" $image.digest -}}
{{- else -}}
    {{- printf "%s" $defaultReference -}}
{{- end -}}
{{- end -}}
{{- end }}
