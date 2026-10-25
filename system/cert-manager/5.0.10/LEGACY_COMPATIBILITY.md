# Kubernetes 1.26 compatibility variant

The four issuerRef selectableFields lists in the Certificate, CertificateRequest, Order and Challenge CRDs are omitted because Kubernetes 1.26 rejects that CRD field. All validation schemas remain intact. This carries the variant rehearsed on K3s 1.26.6; it does not add upstream support.

The wrapper retains legacy installCRDs mode and maps only known official preceding image digests to the 1.21.3 pins. The controller solver argument uses that shared image formatter.
