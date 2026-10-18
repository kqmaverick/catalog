# 11.0.15

- Update the stable Starosdev Scrutiny omnibus image from 1.76.6 to 1.76.7 with its verified image digest.
- Include SQLite BEGIN IMMEDIATE handling for concurrent SMART writes and improved query error reporting.
- Keep bundled InfluxDB 2.9.1-1, the existing startup backup guard and removal of image ZFS scrub/trim cron jobs.
- Preserve collector schedule, device access, service port and config/InfluxDB storage. Back up both config and InfluxDB before updating.
