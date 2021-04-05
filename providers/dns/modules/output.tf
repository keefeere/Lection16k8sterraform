output "record_name" {
  value = dns_a_record_set.this.name
}

output "dns_zone" {
  value = dns_a_record_set.this.zone
}