# 11.0.1

- Fix Browserless v2 startup failure when the configured numeric UID has no entry in the image's passwd database.
- Use the same pinned image in an unprivileged init container to copy the image's account files and add only missing runtime UID/GID entries.
- Mount the generated passwd/group files read-only into the main container from pod-local emptyDir volumes.
- Provide a writable temporary home under /tmp for the configured UID.
- Preserve configured UID/GID, fsGroup, downloads and metrics storage ownership, image, service, CDP address and other v2 migration settings.
- Do not run chown, enable root or make the root filesystem writable.
