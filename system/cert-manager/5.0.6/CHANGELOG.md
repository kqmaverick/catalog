# 5.0.6

- Update cert-manager 1.17.1 to 1.17.4 as the first staged step, with digest-pinned controller, cainjector, webhook, acmesolver and startupapicheck images.
- Preserve the common 23.0.0 archive, configured DNS01 resolvers, Certificate owner-reference behavior, resource names and Helm ownership.
- Use the verified private recovery export and Ingress-backed history limit of 32 before updating. Later minor-version stages remain separate.
