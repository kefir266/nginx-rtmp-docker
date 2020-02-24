//provider "godaddy" {
//  key = var.GODADDY_API_KEY
//  secret = var.GODADDY_API_SECRET
//}
//
//resource "godaddy_domain_record" "hls_domain" {
//  domain = var.DOMAIN_NAME
//
//  customer = var.GODADDY_CUSTOMER
//
//  record {
//    name = var.SUBDOMAIN_HLS
//    type = "A"
//    data = digitalocean_loadbalancer.hls.ip
//  }
//
//  record {
//    name = var.SUBDOMAIN_RTMP
//    type = "A"
//    data = digitalocean_loadbalancer.hls.ip
//  }
//
//
//}
