output "google_addrs" {
  value = "${join(",", data.dns_a_record_set.google.addrs)}"
}