output "notes" {
  value = <<EOF
  Notes:

  NGINX-RTMP:
    ssh -i keys/${aws_key_pair.nginx-user-key.key_name}.pem ubuntu@${aws_instance.aws_nginx_instance.public_ip}

  NGINX-RTMP edge:
    ssh -i keys/${aws_key_pair.nginx-user-key.key_name}.pem ubuntu@${aws_instance.aws_nginx_edge_instance.public_ip}

EOF
}