# 5.0.8

- Update cert-manager 1.18.6 to digest-pinned 1.19.6 after the verified preceding stage.
- Retain legacy CRD installation, common 23.0.0, resolver settings, Certificate owner references and protected request history.
- Carry forward official retained image-default refresh for both 1.17.4 and 1.18.6; use the shared formatter for HTTP01 solver selection.
- Accept only the upstream token-request RoleBinding rename and update bundled ACME dashboard queries to the 1.19 metric names and action label.
- Retain upstream 1.19.6 aggregate edit-role restrictions for internal ACME Orders and Challenges.
