# 31.0.29

- Update only native Bitnami Redis 7.2.4 to digest-pinned Bitnami Secure 8.10.3 and nginx-unprivileged 1.29.1 to stable 1.30.6.
- Keep Nextcloud 35.0.3, PostgreSQL 15.20, application configuration, credentials, storage and all other image pins.
- Add 1Gi disk-backed ephemeral Redis storage and redact local health checks; retain dependency archives unchanged.
- Nextcloud-specific isolated NAS cache, file-lock, concurrent session and Nginx transport checks passed.
- A maintenance window and paused background activity are required before replacing the ephemeral Redis; sessions may require signing in again.
