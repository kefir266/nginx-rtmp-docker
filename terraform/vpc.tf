resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
}

resource "aws_subnet" "edge-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.main.id
  map_public_ip_on_launch = "true"
}
