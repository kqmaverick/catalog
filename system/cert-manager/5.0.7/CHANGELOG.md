# 5.0.7

- Update cert-manager 1.17.4 to digest-pinned 1.18.6 after the verified first patch stage.
- Retain the saved installCRDs mode, common 23.0.0 archive, resource identities, DNS01 resolver settings and Certificate owner-reference behavior.
- Refresh only the previous official component digest when retained TrueNAS form values would otherwise keep 1.17.4 images. Custom image choices remain explicit.
- Require protected Certificate request history of 32 and the original private recovery export before rollout.
