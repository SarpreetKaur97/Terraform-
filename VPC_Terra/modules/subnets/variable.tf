variable "vpc_id" {
  type = string
  default = "vpc_de"
}
variable "private_subnet_cidr_block" {
  type = string 
  default = "10.0.0.0/16"
}
variable "availability_zone" {
  type = string
  default = "availability_private_zone"
}

variable "vpc_id" {
  type = string
  default = "vpc_de"
}
variable "public_subnet_cidr_block" {
  type = string 
  default = "10.0.0.0/16"
}
variable "availability_zone" {
  type = string
  default = "availability_public_zone"
}
