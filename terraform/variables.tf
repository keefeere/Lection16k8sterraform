
variable "kube_host" {
  type = string
  default = "https://keefeere.tk:6443"
}


variable "kube_config" {
  type = string
  default = "~/.kube/config"
}

variable "namespace" {
  type = string
  default = "staging"
}

# variable "grafana_password" {
#   type = string
# }



