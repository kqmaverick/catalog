# 16.0.28

- Update the PostgreSQL 16 selector from 16.3 to the tested, digest-pinned 16.15 system-bookworm image.
- Keep MeshCentral 1.2.6, session/authentication configuration, application/init images, native S3 backups, credentials and data/WAL storage.
- Keep common 23.0.10 and preserve PostgreSQL major selection, PostGIS types and custom image overrides.
- VM PostgreSQL minor-update and old/new S3/WAL restore rehearsals passed; production-data restore remains untested.
