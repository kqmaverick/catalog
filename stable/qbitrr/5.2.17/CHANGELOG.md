# 5.2.17

- Enable a main HTTP service on port 6969 targeting the qBitrr v5 WebUI on container port 6969.
- Default to ClusterIP for access through Authelia ingress; add service and container port controls to the TrueNAS form.
- Add main ingress controls with chain-basic, auth and internal-only middleware defaults in ix-traefik.
- Enable the /ui portal when ingress or an externally exposed service is configured.
- Preserve the pinned qBitrr v5.14.6-1 image, application configuration, authentication, torrent-management settings, init generator, security context, storage and disabled health probes.
- Preserve common 23.0.10 and bundled dependencies.
