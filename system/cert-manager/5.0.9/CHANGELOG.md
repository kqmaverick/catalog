# 5.0.9

- Update cert-manager 1.19.6 to digest-pinned 1.20.4 after the verified preceding stage.
- Retain all 50 current resource identities, legacy CRD installation, common 23.0.0, configured resolvers and protected Certificate history.
- Use the lab-rehearsed Kubernetes 1.26 CRDs: remove only four selectableFields lists while retaining all schemas and validation.
- Carry forward the ACME edit-role security restrictions, dashboard fixes and official image-default refresh for all three preceding stages.
