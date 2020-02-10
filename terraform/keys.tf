
resource "aws_key_pair" "nginx-user-key" {
  key_name   = "nginx-user-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}