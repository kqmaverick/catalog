# 8.0.26

- Fix Homepage 2.5 health probes rejected by Host validation with HTTP 400.
- Send an explicitly allowed localhost Host header on startup, liveness and readiness checks of /api/healthcheck.
- Derive the header port from the main Service targetPort.
- Preserve the pinned Homepage 2.5.0 image, existing allowed hosts, authentication, ingress, sidecars, configuration and common 23.0.10.
