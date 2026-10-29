# 21.0.10

- Add a dedicated 1 GiB PVC at /gluetun for persistent Gluetun server data; existing qBittorrent storage stays unchanged.
- Enable the Gluetun server list updater every 480 hours (20 days). Preserve all container image pins, VPN credentials, DNS settings, Phoenix/IPv4 filters, firewall rules and ports.
- Give the existing code-server sidecar read-only access to the new data mount, matching the vendored library storage selection behavior.
- Provide configured server dry runs, private checkpoints, an initial AirVPN server refresh and an optional single-pod recreation persistence test.
- Explicitly select openebs-zfs-main and ReadWriteOnce for the new volume, matching the verified NAS config PVC and avoiding a missing legacy iX storage class.
