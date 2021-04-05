resource "dns_a_record_set" "this" {
  zone = var.zone
  name = var.a_record
  addresses = var.ip
  ttl = 300
}