# 24.1.10

- Add optional allowed_groups to each OIDC client and generate a deny-by-default group policy using the selected one_factor/two_factor requirement.
- Keep Authelia 4.39.28, its image digest, keys, secrets, existing clients, compatibility claims, database and all workload settings.
- Leave allowed_groups empty for existing clients; use lldap_admin plus two_factor for the new Sonarr client. This does not revoke existing relying-party sessions.
