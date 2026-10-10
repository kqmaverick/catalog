# 16.1.6

- Fix PgAdmin 9.18 startup under restricted security contexts by explicitly setting `PGADMIN_LISTEN_PORT=8080`.
- Align the Service backend, container port and derived health probes with port 8080.
- Preserve external service port 10024, the image digest, application version, storage, credentials and bundled common 23.0.10.
