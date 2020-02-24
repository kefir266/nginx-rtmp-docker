variable "DO_TOKEN" {
}

//variable "GODADDY_API_KEY" {}
//
//variable "GODADDY_API_SECRET" {}
//
//variable "GODADDY_CUSTOMER" {}
//
//variable "DOMAIN_NAME" {}
//
//variable "SUBDOMAIN_HLS" {}
//
//variable "SUBDOMAIN_RTMP" {}

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

variable "public_ip" {
  default = "159.89.244.137"
}
