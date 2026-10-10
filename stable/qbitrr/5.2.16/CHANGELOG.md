# 5.2.16

- Update qbitrr from 4.10.24 to 5.14.6-1.
- Pin the verified image manifest digest: `sha256:9534ae1d0a4fc7255838c94069d35f5161e4f6995bad3168decedd1f656ca2ae`.
- Generate new-install configuration using the pinned image instead of downloading the changing upstream master example.
- Preserve existing configuration for upstream schema migration; do not edit stalled-download, search or seeding settings in the chart.
- Start the bundled Python application through tini under the existing Kubernetes user/group, avoiding the new image entrypoint changing ownership or switching users.
- Keep the service, portal and probes disabled; the new WebUI is not exposed by this chart.
- Preserve common 23.0.10 and bundled dependencies.
