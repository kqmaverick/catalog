# 8.0.25

- Update homepage from 1.13.2 to 2.5.0.
- Pin the verified image manifest digest: `sha256:57c4a0531937889c0b968b120fe9c2560bbe036b5c9e18c49a9e2479de9975d1`.
- Use the public /api/healthcheck endpoint for liveness, readiness and startup probes.
- Preserve manual YAML, forceConfigFromValues behavior and ingress middleware; native authentication remains disabled by the upstream default.
- Preserve common 23.0.10 and bundled dependencies.
