resource "kubernetes_deployment" "nginx-alpine" {
  metadata {
    name = "nginx-alpine"
    labels = {
      app = "nginx-alpine"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "nginx-alpine"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx-alpine"
        }
      }

      spec {
        container {
          image = "nginx:1.20.0-alpine"
          name  = "nginx-alpine"
          port {
            container_port = "80"
          } 
          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}