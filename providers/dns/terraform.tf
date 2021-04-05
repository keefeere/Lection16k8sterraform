terraform {
  required_version = "0.13.6"
  backend "consul" {}
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "3.0.0"
    }
  }
}