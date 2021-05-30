resource "kubernetes_ingress" "example_ingress" {
  metadata {
    name = "example-ingress"
  }

  spec {
    backend {
      service_name = "nginx-alpine-service"
      service_port = 80
    }

    # rule {
    #   http {
    #     path {
    #       backend {
    #         service_name = "nginx-alpine-service"
    #         service_port = 80
    #       }

    #       path = "/*"
    #     }

        
    #   }
    # }

    # tls {
    #   secret_name = "tls-secret"
    # }
  }
}
