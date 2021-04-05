provider "helm" {
  version = "2.0.3"
  kubernetes {
//    host                   = local.k8s_host
//    cluster_ca_certificate = local.k8s_wa_cluster_ca_certificate
//    token                  = local.wa_token_terraform_service_account
//    load_config_file       = false
    config_path = "/Users/sg/.kube/wa-config"
  }
}

provider "kubernetes" {
  version                = "2.0.3"
  host                   = "https://k8s.devopsua.tk:6443"
//  cluster_ca_certificate = base64decode("${data.vault_generic_secret.wa_cluster_ca_certificate.data["wa_cluster_ca_certificate"]}")
//  token                  = data.vault_generic_secret.wa_token_terraform_service_account.data["wa_token_terraform_service_account"]
  config_path = "/Users/sg/.kube/wa-config"
//  load_config_file       = false
}

provider "template" {
  version = "2.2.0"
}

//provider "k8s" {
//  version = "0.7.7"
//  host                   = local.k8s_host
//  cluster_ca_certificate = local.k8s_wa_cluster_ca_certificate
//  token                  = local.wa_token_terraform_service_account
//  load_config_file       = false
//}

provider "vault" {
  version = "~> 2.18"
  address = var.vault_address
}