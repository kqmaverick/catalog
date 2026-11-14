# 15.2.7

- Patch the existing PostgreSQL 16 database from 16.15 to 16.16 using a verified system-bookworm image digest.
- Retain the CNPG operator, application and Redis images, database credentials, backup configuration and existing data/WAL storage.
- Run the bundled configured-value preflight and private recovery preparation before rollout. Update one application at a time, then verify database health and create a fresh native S3 backup.
