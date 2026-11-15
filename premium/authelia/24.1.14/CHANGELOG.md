# 24.1.14

- Update only Authelia Redis from Bitnami 7.2.4 to digest-pinned Bitnami Secure Redis 8.10.3.
- Retain native Bitnami startup, password, UID 568/GID 0, Authelia 4.39.28 and PostgreSQL 16.16.
- Preserve OIDC clients, session encryption key, LDAP/MFA configuration, existing application probes and both Authelia replicas.
- Add a dedicated 1Gi disk-backed ephemeral Redis data mount; create no PVC. The Redis Pod replacement can require signing in again.
- Redact the two local Redis health checks. Keep the embedded Redis and common dependency archives byte-identical.
- The isolated NAS pilot passed two-instance login, encrypted shared sessions, session TTL, reconnect, logout, native startup and synthetic AOF/RDB checks.
- Blocky and Nextcloud are excluded. Run configured preflight and private preparation before updating through the Apps UI.
