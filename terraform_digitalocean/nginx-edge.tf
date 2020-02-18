resource "digitalocean_droplet" "do_edge_nginx_instance" {
  image = "59400643"
  name = "edge-nginx"
  region = "nyc3"
  ssh_keys = [digitalocean_ssh_key.nginx-user-key.fingerprint]
  size = "s-1vcpu-2gb"
}

resource "digitalocean_droplet" "do_edge_nginx_instance_2" {
  image = "59400643"
  name = "edge-nginx"
  region = "nyc3"
  ssh_keys = [digitalocean_ssh_key.nginx-user-key.fingerprint]
  size = "s-1vcpu-2gb"
}
