variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "main-nginx-AMIS" {
  type = map(string)
  default = {
//    us-east-2 = "ami-0c792cab76513072d"
    us-east-2 = "ami-06b2aaecaef0d320e"
  }
}
variable "edge-nginx-AMIS" {
  type = map(string)
  default = {
//    us-east-2 = "ami-0c792cab76513072d"
    us-east-2 = "ami-07c52c76f2cf6423d"
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
