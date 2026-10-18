# 27.0.17

- Update Traefik v2.11.58 to v2.11.59 with its verified image digest; remain on Traefik v2.
- Upstream now rejects all HTTP CONNECT requests, including HTTP/2 and HTTP/3. Install separately if an application depends on CONNECT tunneling.
- Preserve bundled CRDs, routing configuration, certificates, entrypoints, replicas and existing authentication middlewares.
