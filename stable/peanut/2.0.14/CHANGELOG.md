# 2.0.14

- Update PeaNUT 6.0.0 to 6.1.0 with its verified image digest.
- Include NUT credential forwarding, metrics improvements and persistent /config/auth.yaml authentication-file handling.
- Existing NAS authentication is disabled and no legacy authentication file exists, as verified before this batch. Auth-enabled installations must migrate any legacy /app/config/auth.yaml before updating.
- Preserve NUT settings, configuration PVC, port, HTTP probes and configured container security context.
