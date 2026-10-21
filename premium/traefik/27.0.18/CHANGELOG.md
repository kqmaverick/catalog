# 27.0.18

- Update Traefik 2.11.59 to 2.11.60 on the existing v2 branch.
- Includes the ForwardAuth fix for connection-bound NTLM/Negotiate authentication; actual use of that authentication mechanism is not established on this NAS.
- Preserve routing, CRDs, certificates, entrypoints and authentication middleware. Test ingress last in the maintenance session.
