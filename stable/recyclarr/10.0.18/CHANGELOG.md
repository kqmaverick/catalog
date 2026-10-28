# 10.0.18

- Update Recyclarr 8.8.0 to 8.8.1 with a verified image digest, including the existing shared config-init image selector.
- Fix Radarr 7 sync failures when OIDC is selected and tolerate unknown Sonarr/Radarr setting values. Improve unreadable-response diagnostics and Sonarr v5 sync progress/notification results.
- Preserve configuration, credentials, config storage, existing config-init command and CRON_SCHEDULE. This chart update does not request a sync or alter Arr authentication.
