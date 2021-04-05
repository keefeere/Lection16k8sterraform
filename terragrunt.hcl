remote_state {
  backend = "consul"
  config = {
    address = "http://inst-01.devopsua.tk:8500"
    scheme  = "http"
    path    = "${path_relative_to_include()}/terraform.tfstate"
    lock = true
  }
}

inputs = {
  aws_region                            = "eu-west-1"
  terraform_remote_state_file_name      = "terraform.tfstate"
  vault_address                         = "https://vault-f.devopsua.tk:8200"
}