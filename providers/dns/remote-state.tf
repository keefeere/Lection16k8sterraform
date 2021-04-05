data "terraform_remote_state" "dev" {
  backend "consul"
  config {
    address = "http://inst-01.devopsua.tk:8500"
    scheme  = "http"
    path    = "dev/terraform.tfstate"
    lock = true
  }
}