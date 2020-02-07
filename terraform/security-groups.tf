resource "aws_security_group" "from_admin" {
  name = "from_admin"
  vpc_id = aws_vpc.main.id

  connection {
    host=aws_instance.aws_nginx_instance.public_ip
    type="ssh"
    user="ubunyu"
    private_key = file("./keys/nginx-user-key.pem")
  }

  ingress {
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

}