# 11.0.0

- Update browserless-chrome from 1.61.1 to 2.57.0.
- Pin the verified image manifest digest: `sha256:6bac628b3d8293f8fb251d3a6b63030dfc5a1cb0c7e5c39abe5efd8f4b25360b`.
- Use the official GHCR Chromium image so the existing root WebSocket CDP address continues to select an installed browser.
- Both image selectors now use Browserless v2 Chromium; the old Puppeteer 13 image variant is retired.
- Translate saved concurrency, queue, timeout, API GET, CORS and download-directory settings into their v2 names.
- Remove retired v1 environment controls and their UI fields. Browser launch options now belong in each client connection.
- Normalize an empty bind host to 0.0.0.0 and keep service port 10194, container port 3000, ingress and existing storage.
- Advertise the internal service address in CDP discovery by default, avoiding an unreachable container bind address for Stash; allow a custom advertised http(s) address.
- Probe /metrics locally using the configured token without logging it, and use a separate v2 metrics file for rollback.
- Preserve common 23.0.10 and bundled dependencies.
