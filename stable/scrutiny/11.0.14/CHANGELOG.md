# 11.0.14

- Update the Starosdev Scrutiny omnibus image from 1.76.4 to 1.76.6 with its verified image digest.
- Include upstream 1.76.5 status/sorting, per-device SMART override and notification-form fixes.
- Include the 1.76.6 removal of Debian ZFS cron jobs that could schedule scrubs/trims of host pools when /dev/zfs is accessible.
- Correct upstream source links to the Starosdev fork already used by this chart.
- Keep bundled InfluxDB 2.9.1-1, config/InfluxDB persistence, service port 10151, /api/health probes, existing collector schedule, device access and common 23.0.10.
- Stop Scrutiny and back up both config and influxdb before upgrading; existing InfluxDB preflight markers and backup-confirmation settings remain applicable.
