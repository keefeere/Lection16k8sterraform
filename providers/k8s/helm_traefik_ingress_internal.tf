locals {
  helm_traefik_version                 = "9.18.0"
  traefik_helm_repository              = "https://helm.traefik.io/traefik"
}

resource "helm_release" "traefik_ingress_internal" {
  name       = "traefik-ingress"
  repository = local.traefik_helm_repository
  chart      = "traefik"
  version    = local.helm_traefik_version
  namespace  = "kube-system"

  values = [
    file("${path.module}/values/traefik_ingress_internal.yaml")
  ]
}