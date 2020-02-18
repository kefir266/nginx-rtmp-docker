resource "digitalocean_ssh_key" "nginx-user-key" {
  name   = "nginx-user-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}
