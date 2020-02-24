output "notes" {
  value = <<EOF
  Notes:

  NGINX-RTMP:
    ssh -i keys/${digitalocean_ssh_key.nginx-user-key.name}.pem root@${digitalocean_droplet.do_main_nginx_instance.ipv4_address}

  NGINX-RTMP edge:
    ssh -i keys/${digitalocean_ssh_key.nginx-user-key.name}.pem root@${digitalocean_droplet.do_edge_nginx_instance.ipv4_address}
  NGINX-RTMP edge 2:
    ssh -i keys/${digitalocean_ssh_key.nginx-user-key.name}.pem root@${digitalocean_droplet.do_edge_nginx_instance_2.ipv4_address}
  LOADBALANCER:
    ${digitalocean_loadbalancer.hls.ip}
EOF
}
