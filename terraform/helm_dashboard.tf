

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


resource "kubernetes_cluster_role_binding" "dashboard_binding" {
  metadata {
    name = "kubernetes-dashboard"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  
  subject {
    kind      = "ServiceAccount"
    name      = "kubernetes-dashboard"
    namespace = "default"
  }
  
  }
