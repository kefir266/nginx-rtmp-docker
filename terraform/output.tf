output "notes" {
  value = <<EOF
  Notes:

    ssh -i ${aws_key_pair.nginx-user-key.key_name}.pem ubuntu@${aws_instance.aws_nginx_instance.public_ip}

EOF
}