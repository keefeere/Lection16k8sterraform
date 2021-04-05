terraform {
  backend "consul" {
    address = "http://inst-01.devopsua.tk:8500"
    scheme  = "http"
    path    = "prod/terraform.tfstate"
    lock = true
  }
}

provider "dns" {
  version = "~> 3.0"
  update {
    server        = "10.71.0.1"
    key_name      = "terr-key."
    key_algorithm = "hmac-md5"
    key_secret    = "j4Dtf/UlOZ0wFJtj4MtB1Q=="
  }
}