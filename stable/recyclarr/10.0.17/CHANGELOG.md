# 10.0.17

- Update Recyclarr 8.7.3 to 8.8.0 with its verified image digest.
- Add upstream Sonarr 5 sync support and fixes for quality definitions, profile size limits and unmanaged media-management settings.
- On Sonarr 5, quality_definition sizes apply to the quality profiles listed in Recyclarr configuration; review a sync preview before the next scheduled sync.
- Preserve the existing configuration PVC, init-config command, cron schedule, security context and bundled common 23.0.10 dependency.
