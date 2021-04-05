locals {
  a = "blabla"
}
module "a-record"{
  source = "../modules"
  a_record = var.a_record
  zone = var.zone
  ip = var.ip
}