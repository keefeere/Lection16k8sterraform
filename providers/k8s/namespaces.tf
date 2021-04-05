resource "kubernetes_namespace" "gitlab" {
  metadata {
    name = "gitlab"
  }
}

//resource "kubernetes_namespace" "monitoring" {
//  metadata {
//    name = "monitoring"
//  }
//}

//resource "kubernetes_namespace" "vswh" {
//  metadata {
//    name = "vswh"
//  }
//}
