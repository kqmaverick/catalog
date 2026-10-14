# 23.0.0

- Update the selected Home Operations develop image from Sonarr 4.0.20.3012 to the explicitly requested 5.0.0.2569 beta.
- Translate the legacy TrueNAS auth-method field to Sonarr 5 Auth:Method; convert Basic to Forms and retain In-App Setting/External/Forms selections.
- Use Sonarr 5 Server:Port; retain service port, /config, /ping probes, ingress settings and optional Exportarr configuration.
- Add opt-in native OIDC controls to the SCALE form, using an existing Kubernetes Secret reference for the client secret and requiring browser authentication on all addresses.
- Configure native OIDC and verify a complete fresh login before removing only the Sonarr ingress Authelia middleware. Keep TLS/internal-only middleware.
- A Sonarr 4 backup is required for rollback after the Sonarr 5 database migration.
