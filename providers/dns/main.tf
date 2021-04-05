resource "dns_a_record_set" "test-2809" {
  zone = local.domain
  name = "test-2809"
  addresses = [
    "10.91.0.251",
  ]
  ttl = 300
}

resource "dns_a_record_set" "test2-2809" {
  zone = local.domain
  name = "test2-2809"
  addresses = [
    "10.91.0.249",
  ]
  ttl = 300
}