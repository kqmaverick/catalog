# 23.0.0

- Update Radarr 6.4.4.10685 to the explicitly selected v7 prerelease 7.0.0.10815 with a verified image digest. This switches Radarr to its develop channel and .NET 10.
- Add optional native OIDC controls equivalent to Sonarr, including an existing Kubernetes Secret reference, HTTPS issuer, authorized verified email or subject and openid scopes. OIDC is disabled by default.
- Translate the legacy authentication-method and server-port environment options to v7 option names. Preserve existing authentication when native OIDC is disabled, API keys, exportarr, media/config storage and other images.
- Take a verified pre-v7 Radarr database/config backup before updating. Configure the Authelia client and Radarr Secret before enabling OIDC; verify login, logout and a second login before changing forward-auth middleware.
