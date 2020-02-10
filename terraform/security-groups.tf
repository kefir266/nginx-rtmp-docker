resource "aws_security_group" "from_admin" {
  name = "from_admin"
  vpc_id = aws_vpc.main.id

  connection {
    host= aws_instance.aws_nginx_edge_instance.public_ip
    type="ssh"
    user="ubunyu"
    private_key = file("./keys/nginx-user-key.pem")
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
    cidr_blocks = var.ADMIN-IP
  }

}

resource "aws_security_group" "rtmp" {
  name = "RTMP"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 1935
    protocol  = "tcp"
    to_port   = 1935
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "http" {
  name = "http"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

}