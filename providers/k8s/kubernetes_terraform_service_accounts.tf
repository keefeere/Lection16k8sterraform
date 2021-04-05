//resource "kubernetes_service_account" "terraform" {
//  metadata {
//    name      = "terraform"
//    namespace = "kube-system"
//  }
//}
//
//resource "kubernetes_cluster_role_binding" "terraform" {
//  metadata {
//    name = kubernetes_service_account.terraform.metadata.0.name
//    labels = {
//      app = kubernetes_service_account.terraform.metadata.0.name
//    }
//  }
//  role_ref {
//    api_group = "rbac.authorization.k8s.io"
//    kind      = "ClusterRole"
//    name      = "cluster-admin"
//  }
//  subject {
//    kind      = "ServiceAccount"
//    name      = kubernetes_service_account.terraform.metadata.0.name
//    namespace = "kube-system"
//  }
//}
