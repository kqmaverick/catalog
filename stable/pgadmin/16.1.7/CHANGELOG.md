# 16.1.7

- Update pgAdmin 9.18 to 9.19 with a verified image digest, including the upstream security fixes.
- Server-mode Password Exec Commands now use an administrator-defined allowlist. Review service connections, Kerberos, shared credential files and SSH implicit credentials before upgrading.
- Run the packaged compatibility check and save a private settings-database recovery checkpoint before updating. Preserve configuration, existing server registrations, PVC, ports, identity and authentication.
