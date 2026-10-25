# 5.2.19

- Update qBitrr 5.14.6-2 to 5.14.7-1 with a verified image digest.
- Require fresh torrent-removal clearance across custom-format, failed-category, import-error and file-cleanup paths. Respect Hit-and-Run, minimum age, stalled grace and never-remove seeding settings; uncertain clearance retains torrents.
- Preserve existing configuration, credentials, WebUI ingress, storage and startup behavior. No configuration schema bump is declared upstream.
