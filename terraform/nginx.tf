resource "aws_instance" "aws_nginx_instance" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.medium"
  key_name      = aws_key_pair.nginx-user-key.key_name


  subnet_id = aws_subnet.edge-subnet.id
  vpc_security_group_ids = [aws_security_group.from_admin.id]

  //  TODO maybe it's not the best approach. It would be make up in future
//  provisioner "local-exec" {
//    command = "echo '#test edge' >> ~/hosts"
//  }
//
//  provisioner "file" {
//    source      = "script.sh"
//    destination = "/opt/script.sh"
//    connection {
//      user        = var.nginx-user-name
//      private_key = file(var.PATH_TO_PRIVATE_KEY)
//      host = coalesce(self.public_ip, self.private_ip)
//    }
//  }
}

resource "aws_key_pair" "nginx-user-key" {
  key_name   = "nginx-user-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}
