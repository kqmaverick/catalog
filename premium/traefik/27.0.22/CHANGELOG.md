# 27.0.22

- Update Traefik to 2.11.62 on the existing v2.11 track for security fixes.
- BasicAuth passwords longer than 1024 bytes are rejected. Path sanitization now handles path parameters on dot and empty segments.
- Retain routes, entrypoints, middleware, certificates, CRDs and service ports. Test representative HTTPS routes after rollout.
