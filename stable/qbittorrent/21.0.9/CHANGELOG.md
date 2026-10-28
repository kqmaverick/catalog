# 21.0.9

- Update only the Gluetun sidecar from the retired TCCR 3.38.0 image to official qmcgaw/gluetun 3.41.3, pinned by digest.
- Override gluetunImage in this application chart and retain common-23.0.10.tgz unchanged. Preserve qBittorrent 5.3.0, code-server and helper images, AirVPN WireGuard credentials, DNS/firewall/static-port settings and storage.
- The configured preflight requires port-forward automation to remain disabled. Archive cached TCCR images and save a private checkpoint before rollout; verify Gluetun health after updating.
- Refresh only the exact retired Gluetun library image default retained in saved values, at chart rendering; preserve other saved settings.
