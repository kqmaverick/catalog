# 27.0.20

- Update Traefik 2.11.60 to 2.11.61 with a verified image digest; retain Traefik v2.
- Go 1.27 removes legacy TLS GODEBUG overrides and RSA key exchange/3DES support to HTTPS backends. The default request-header-value limit is 500.
- Run the packaged TLS compatibility checks before updating. Preserve existing entrypoints, routes, middleware, certificates, CRDs, metrics, replicas and service ports.
