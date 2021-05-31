
provider "helm" {
  kubernetes {
	config_path = pathexpand(var.kube_config)
  }
}

provider "kubernetes" {
  host = var.kube_host
  config_path = pathexpand(var.kube_config)
}

provider "kubectl" {
  host                   = var.kube_host
  config_path = pathexpand(var.kube_config)
  load_config_file       = true
}