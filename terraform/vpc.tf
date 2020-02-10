resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
}

resource "aws_subnet" "edge-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.main.id
  map_public_ip_on_launch = "true"
}

# Internet GW
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}

# route tables
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }
}

# route associations public
resource "aws_route_table_association" "edge-subnet" {
  subnet_id      = aws_subnet.edge-subnet.id
  route_table_id = aws_route_table.main-public.id
}
