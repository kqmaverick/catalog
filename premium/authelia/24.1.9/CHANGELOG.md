# 24.1.9

- Update Authelia from 4.38.18 to 4.39.28 using the official digest-pinned image.
- Preserve pre-4.39 OIDC ID-token claims with a named compatibility policy for existing clients; expose a default-enabled TrueNAS toggle and respect explicit client claims policies.
- Keep client IDs, secrets, scopes, redirect URIs, signing keys, TOTP settings, LDAP, session/storage settings, service ports, HTTP probes, security context, storage and bundled dependencies.
- Back up the database, configuration and original keys; stop Authelia before upgrading to avoid running old and new versions together during schema migration.
- Verify TOTP, protected ingress and OIDC logins for Komga, MeshCentral and Immich. Rollback requires the matching pre-upgrade database and original keys.
