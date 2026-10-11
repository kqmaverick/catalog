# 27.0.16

- Update Traefik from 2.11.2 to the 2.11.58 security maintenance release using the official image pinned by digest.
- Render custom chain members as native same-namespace middleware references, compatible with the newer allowCrossNamespace enforcement.
- Reject legacy TrueCharts bundled-plugin settings with a clear rendering error when the official image is selected; it does not contain that plugin bundle.
- Preserve service ports, provider flags, authentication, TLS settings, middleware definitions, security context, storage, probes, common 23.0.10 and bundled dependencies.
- Deploy separately and verify protected and external-service routes before continuing with other app updates.
