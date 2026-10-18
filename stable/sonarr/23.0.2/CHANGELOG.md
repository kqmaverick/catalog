# 23.0.2

- Allow empty optional OIDC issuer, user identifier and Secret name when native OIDC is disabled, including saved values from an earlier release.
- Keep enabled OIDC validation in the Helm template; reject whitespace-only client IDs and authorized user identifiers.
- Retain Sonarr 5.0.0.2668 and its OIDC response-cache fix, image digest, authentication mappings, existing Secret references and storage.
