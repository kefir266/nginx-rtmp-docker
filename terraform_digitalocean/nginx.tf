resource "digitalocean_droplet" "do_main_nginx_instance" {
  image = "59400643"
  name = "main-nginx"
  region = "ams3"
  ssh_keys = [digitalocean_ssh_key.nginx-user-key.fingerprint]
  size = "c-4"
}

