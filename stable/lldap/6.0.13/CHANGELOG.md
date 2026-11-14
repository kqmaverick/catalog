# 6.0.13

- Patch the existing PostgreSQL 15 database from 15.19 to 15.20 using a verified system-bookworm image digest.
- Retain the CNPG operator, application and Redis images, database credentials, backup configuration and existing data/WAL storage.
- Run the bundled configured-value preflight and private recovery preparation before rollout. Update one application at a time, then verify database health and create a fresh native S3 backup.
