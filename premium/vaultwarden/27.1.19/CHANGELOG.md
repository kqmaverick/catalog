# 27.1.19

- Update the PostgreSQL 15 selector from 15.7 to the tested, digest-pinned 15.19 system-bookworm image.
- Keep Vaultwarden 1.37.4, configured application/init images, startup behavior, credentials, native S3 configuration and storage.
- Preserve common 23.0.10, PostgreSQL major selection, PostGIS and custom image overrides.
- VM minor-update and old/new S3/WAL restore rehearsals passed; production-data restore remains untested.
