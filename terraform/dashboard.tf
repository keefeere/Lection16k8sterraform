

resource "helm_release" "k8s-dashboard" {
  name       = "kubernetes-dashboard"
  repository = "https://kubernetes.github.io/dashboard"
  chart      = "kubernetes-dashboard"
  set {
    name  = "fullnameOverride"
    value = "kubernetes-dashboard"
  }

#   set_sensitive {
#     # name  = "slack.token"
#     # value = var.slack_app_token
#   }
}