# 6.0.12

- Update the PostgreSQL 15 selector from 15.7 to the tested, digest-pinned 15.19 system-bookworm image.
- Keep LLDAP 0.6.3, the JWT Secret lookup and LDAP/authentication settings, application/init images, native S3 backups, credentials and data/WAL storage.
- Keep common 23.0.10 and preserve PostgreSQL major selection, PostGIS types and custom image overrides.
- VM PostgreSQL minor-update and old/new S3/WAL restore rehearsals passed; production-data restore remains untested.
