# 6.0.11

- Update lldap from 0.6.1 to 0.6.3.
- Pin the verified image manifest digest: `sha256:2f208d7dc45d0b01648ab9c869fa6f65b843a8c9647e99dd929739f5a51a945b`.
- Preserve common 23.0.10, bundled dependencies, templates and existing application settings.
- Fix LLDAP_JWT_SECRET to read the existing generated Kubernetes Secret instead of literal placeholder text.
- Preserve the existing secret generator, private-key path and PostgreSQL settings; existing LLDAP web/API sessions must sign in again.
