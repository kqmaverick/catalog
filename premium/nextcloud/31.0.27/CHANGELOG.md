# 31.0.27

- Update the custom Nextcloud FPM image from stable 35.0.2 to stable 35.0.3, retaining PHP 8.5.12.
- Retain PostgreSQL 15.19, Redis, companion images, configuration, storage and existing startup behavior. Prepare a fresh private database and application-files recovery export before rollout.
