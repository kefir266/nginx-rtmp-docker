resource "digitalocean_loadbalancer" "hls" {
  name   = "loadbalancer-1"
  region = "ams3"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = [digitalocean_droplet.do_edge_nginx_instance.id, digitalocean_droplet.do_edge_nginx_instance_2.id]
}
