# 11.0.18

- Update the existing Scrutiny omnibus image from 1.77.0 to 1.78.0 with a verified image digest.
- Include per-drive filesystem capacity reporting and expanded SAS/SCSI monitoring. Filesystem attribution requires the optional filesystem collector and consistent collector host IDs; this update does not enable them.
- Keep the existing bundled InfluxDB version and startup backup guard, device permissions, collector schedule, configuration and InfluxDB storage.
