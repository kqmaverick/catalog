# 2.0.13

- Update peanut from 2.6.1 to 6.0.0.
- Pin the verified image manifest digest: `sha256:6629dce915da8b313f08b2e73dd2e54b60e7c0f642c21a8ebc37fe0a820bf41e`.
- Keep web authentication disabled by default with AUTH_DISABLED=true; retain existing ingress middleware.
- Add writable persistent /config storage (1Gi PVC by default) and a TrueNAS storage selector.
- Preserve NUT_HOST, NUT_PORT, USERNAME and PASSWORD for upstream first-start settings migration; saved settings then take precedence over environment variables.
- Use /api/ping HTTP probes and retain the existing configurable web port and container security context.
- Preserve common 23.0.10 and bundled dependencies.
