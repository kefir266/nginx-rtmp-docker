variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0fc20dd1da406780b"
  }
}

variable "nginx-user-name" {
  default = "user"
}


variable "PATH_TO_PRIVATE_KEY" {
  default = "./keys/nginx-user-key.pem"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "./keys/nginx-user-key.pub"
}

variable "EDGE_IP" {}

variable "ADMIN-IP" {
  type = list(string)
}