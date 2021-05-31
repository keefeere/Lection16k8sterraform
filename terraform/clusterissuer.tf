resource "kubectl_manifest" "clusterissuerstaging" {
    yaml_body = <<YAML
apiVersion: cert-manager.io/v1alpha2
kind: ClusterIssuer
metadata:
  name: letsencrypt-staging
spec:
  acme:
    email: keefeere@ukr.net
    server: https://acme-staging-v02.api.letsencrypt.org/directory

    privateKeySecretRef:
      # Secret resource that will be used to store the account's private key.
      name: tls-secret-private
    solvers:
      - http01:
          ingress:
            class: traefik-cert-manager
YAML
}

resource "kubectl_manifest" "clusterissuerprod" {
    yaml_body = <<YAML
apiVersion: cert-manager.io/v1alpha2
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    email: keefeere@ukr.net
    server: https://acme-v02.api.letsencrypt.org/directory
    privateKeySecretRef:
      # Secret resource that will be used to store the account's private key.
      name: tls-secret-private
    solvers:
      - http01:
          ingress:
            class: traefik-cert-manager
YAML
}