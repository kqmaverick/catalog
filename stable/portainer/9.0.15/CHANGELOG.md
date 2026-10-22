# 9.0.15

- Update Portainer Community Edition from 2.45.2 to 2.45.3 with its verified image digest.
- Include upstream access-control, kubeconfig-token and critical Go/network dependency fixes.
- The new release distrusts compromised eMudhra/emSign certificate chains. Check authentication providers, registries and Git endpoints before rollout; the Helm preflight cannot validate these Portainer-internal connections.
- Preserve Community Edition selection, /data storage, service account/RBAC, TLS/Edge ports, existing flags, authentication configuration and legacy init images. The separate Business Edition selector is unchanged.
