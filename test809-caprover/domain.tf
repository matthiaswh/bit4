resource "cloudflare_record" "app_domains" {
  domain  = "${var.domain}"
  name    = "*.${local.subdomain}"
  type    = "A"
  value   = "${hcloud_server.test.ipv4_address}"
  proxied = false
}
