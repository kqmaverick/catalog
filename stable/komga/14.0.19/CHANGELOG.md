# 14.0.19

- Update Komga 1.28.1 to 1.29.1 using the official digest-pinned image.
- Preserve config/data mounts, OIDC settings, ports, health probes, security context and bundled dependency.
- HTTP sessions now persist in /config/sessions.sqlite by default in Docker. Back up all /config before upgrading; verify Authelia OIDC and Panels OPDS.
