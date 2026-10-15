# 24.1.11

- Expose the separate pushed_authorization_request_endpoint_auth_method setting for each OIDC client in TrueNAS.
- Set this field to client_secret_post for Sonarr 5, matching its ASP.NET Core pushed authorization requests.
- Leave the new field empty for existing clients to retain the Authelia default. Keep image 4.39.28, keys, data, group policies and all workloads unchanged.
