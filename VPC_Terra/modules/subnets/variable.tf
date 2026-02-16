variable "aws_vpc" {
  type = string
  }
variable "private_subnet_cidr_block" {
  type = string 
  default = "10.1.0.0/16"
}
variable "private_subnet_name" {
  type = string
}
variable "availability_zone" {
  type = string
  }
variable "public_subnet_cidr_block" {
  type = string 
  default = "10.2.0.0/16"
}
variable "public_subnet_name" {
  type = string
}
