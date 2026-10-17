# 25.1.29

- Update the PostgreSQL 16 image selector from 16.3 to the tested digest-pinned 16.15 system-bookworm image.
- Keep Home Assistant 2026.10.1, recorder settings, trusted proxies, host networking, application/init images, credentials and data/WAL storage.
- Preserve native Barman S3 backups and the common 23.0.10 archive.
- Keep the configured PostgreSQL major, PostGIS image types and explicit custom image overrides.
- Guard the effective init script after configured Helm values merge, preserving any existing HACS directory even when TrueNAS retains the old script in saved values. New installations retain the existing HACS download path.
- VM PostgreSQL minor-update and old/new S3/WAL restore rehearsals passed; production-data restore remains untested.
