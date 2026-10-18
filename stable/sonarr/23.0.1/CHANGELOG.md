# 23.0.1

- Update Sonarr from 5.0.0.2569 to 5.0.0.2668 on the existing develop/beta channel, with a verified image digest.
- Include the OIDC authentication response-cache fix from upstream PR 9100 (first released in 5.0.0.2635).
- Preserve native OIDC environment mappings, Secret references, exportarr, configuration storage and existing authentication policy. Test login, logout and a second login after updating.
