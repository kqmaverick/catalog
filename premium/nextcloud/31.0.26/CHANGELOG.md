# 31.0.25

- Update the PostgreSQL 15 selector from 15.7 to the tested, digest-pinned 15.19 system-bookworm image.
- Keep Nextcloud 35.0.2, application/init images, configuration and startup behavior, native S3 backups, credentials and data/WAL storage.
- Preserve the common and Redis archives, PostgreSQL major selection, PostGIS types and custom image overrides.
- VM PostgreSQL minor-update and old/new S3/WAL restore rehearsals passed; production-data restore remains untested.
