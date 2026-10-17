# 15.2.5

- Update Blocky's existing PostgreSQL 16 cluster from 16.3 to the digest-pinned 16.15 system-bookworm image.
- Preserve native Barman S3 backups and the existing common/Redis dependencies.
- Keep the configured PostgreSQL major, custom image overrides and other image types.
- Keep Blocky 0.35.0, DNS configuration, application/init images, credentials and data/WAL storage settings.
- PostgreSQL minor-update, old/new S3 backup/WAL restore rehearsal passed in the Ubuntu ZFS lab; production-data restore remains untested.
