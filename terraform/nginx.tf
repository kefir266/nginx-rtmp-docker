resource "aws_instance" "aws_nginx_instance" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}