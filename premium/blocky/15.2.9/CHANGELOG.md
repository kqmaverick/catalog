# 15.2.9

- Update only Blocky Redis from Bitnami 7.2.4 to the digest-pinned Bitnami Secure Redis 8.10.3 Photon image.
- Retain native Bitnami entrypoint, arguments, environment, existing credentials and UID 568/GID 0.
- Keep Blocky 0.36.0, gateway, PostgreSQL 16.16, Services, DNS configuration and existing storage bindings.
- Add a dedicated 1Gi disk-backed ephemeral mount at /bitnami/redis; introduce no PVC or persistent-cache migration.
- Redact the two local Redis health-check failures; enforce native Blocky readiness and maxUnavailable 0 / maxSurge 1.
- Actual isolated NAS native startup, synthetic data handoff, authentication, Lua, AOF/RDB and Blocky DNS tests passed.
- Nextcloud and Authelia are excluded. Run configured preflight and native private preparation before the Apps UI update.
