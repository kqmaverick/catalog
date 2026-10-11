# 15.2.4

- Update Blocky from 0.25.0 to 0.35.0 using the official digest-pinned image.
- Preserve DNS/DoT/DoH/HTTP ports, upstreams, bootstrap DNS, conditional mappings, query-log settings, Redis/CNPG provisioning, security context and disabled probes.
- Preserve the existing k8s-gateway 0.4.0 sidecar and bundled dependency; no operator or PostgreSQL image change.
- Retain the existing generated configuration and supported upstream/timeout migrations. Verify internal k8s-gateway DNS, public resolution and Pi-hole forwarding after deployment.
