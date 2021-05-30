resource "kubernetes_service" "example" {
  metadata {
    name = "nginx-alpine-service"
  }
  spec {
    selector = {
      app = "nginx-alpine"
    }
    
    port {
      port        = 80
      target_port = 80
    }

#    type = "NodePort"
  }
}