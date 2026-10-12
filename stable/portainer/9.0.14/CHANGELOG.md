# 9.0.14

- Update Portainer Community Edition from 2.20.3 to 2.45.2 LTS using the tested official digest-pinned image.
- Preserve service ports, HTTPS probes, ingress options, persistent storage, service account, RBAC, command-line settings, UID/GID 568 and read-only root filesystem.
- Keep the Business Edition 2.20.3 image and bundled common 23.0.10 dependency unchanged; this release updates Community Edition.
- Copied-data migration, restricted startup, selected Docker 26.1.4/Kubernetes 1.26.6 inventory reads and restart passed on the user's NAS; complete management and ingress still require post-upgrade checks.
- Keep a current backup of all Portainer /data before upgrading. Rollback after migration requires the matching pre-upgrade data and old chart/image.
