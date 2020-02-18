variable "DO_TOKEN" {
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
