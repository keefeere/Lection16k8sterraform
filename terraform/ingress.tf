resource "kubernetes_ingress" "example_ingress" {
  metadata {
    name = "example-ingress"
    annotations = {
      "cert-manager.io/cluster-issuer" = "letsencrypt-prod" #change to letsencrypt-prod after testing
      "kubernetes.io/ingress.class" = "traefik-cert-manager"
      "certmanager.k8s.io/acme-challenge-type" = "http01"
     }
  }

  spec {
    # backend {
    #   service_name = "nginx-alpine-service"
    #   service_port = 80
    # }

    rule {
      host = "keefeere.tk"

      http {
        path {
          backend {
            service_name = "nginx-alpine-service"
            service_port = 80
          }

          path = "/"
        }

      }
    }

     tls {
        hosts = [ "keefeere.tk" ]
        secret_name = "tls-secret"
      }
  }
}
