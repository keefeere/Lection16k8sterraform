provider "vault" {
  version = "~> 2.8"
  address = var.vault_address
}

provider "dns" {
  version = "~> 3.0"
  update {
    server        = "10.91.0.1"
    key_name      = "terr-key."
    key_algorithm = "hmac-md5"
    key_secret    = "j4DRf/UlOZ0wFJtj4MtB1Q=="
  }
}