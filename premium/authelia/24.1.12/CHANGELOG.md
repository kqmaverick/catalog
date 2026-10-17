# 24.1.12

- Update the PostgreSQL 16 image selector from 16.3 to the tested, digest-pinned 16.15 system-bookworm image.
- Keep Authelia 4.39.28, its authentication/OIDC/PAR configuration, application/init images, credentials and data/WAL storage.
- Preserve native Barman S3 backups and the common 23.0.10 / Redis 14.0.5 archives.
- Preserve the configured PostgreSQL major, PostGIS image types and explicit custom image overrides.
- The VM PostgreSQL minor-update and S3/WAL restore rehearsal passed; production-data restore remains untested.
