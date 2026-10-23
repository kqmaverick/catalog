# 16.0.30

- Update MeshCentral 1.3.0 to 1.3.1, an urgent upstream security release whose maintainers report active attacks against servers and connected clients.
- The verified linux/amd64 image declares Node.js 24.22.1. Keep the existing node command, certificate identities, authentication settings, PostgreSQL 16.15 pin, credentials and data/files/web mounts.
- Includes agent loading, updates, proxy/offline download and permission-handling fixes. Verify an existing agent reconnect and remote session after rollout. This update does not establish that a server was uncompromised before installation.
