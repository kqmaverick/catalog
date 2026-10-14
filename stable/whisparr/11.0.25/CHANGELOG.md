# 11.0.25

- Update Whisparr Eros v3 from 3.6.2-release.1727 to 3.6.5-release.1886 using the digest-pinned Hotio v3 image.
- Use the anonymous /ping database health endpoint instead of placing the API key in the health-check request URL.
- Preserve /config, service port 6969, Hotio startup/security settings and ingress. Back up /config and review authentication before updating.
