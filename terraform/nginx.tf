resource "aws_instance" "aws_nginx_instance" {
  ami           = var.main-nginx-AMIS[var.AWS_REGION]
  instance_type = "c5.xlarge"
  key_name      = aws_key_pair.nginx-user-key.key_name


  subnet_id = aws_subnet.edge-subnet.id
  vpc_security_group_ids = [aws_security_group.from_admin.id, aws_security_group.rtmp.id]

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

