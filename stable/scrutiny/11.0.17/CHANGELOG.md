# 11.0.17

- Update the stable omnibus image from 1.76.9 to 1.77.0 with a verified image digest.
- Fix Run collectors hanging with a SMART schedule and skip disabled ZFS/MDADM collectors; add dashboard release links.
- Preserve bundled InfluxDB, the startup backup guard, existing collector schedules and the removal of image ZFS scrub/trim cron jobs. Preserve config and InfluxDB storage.
