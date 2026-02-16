variable "aws_vpc" {
  type = string
  }
variable "private_subnet_cidr_block" {
  type = string 
  default = "10.1.0.0/16"
}
variable "availability_zone" {
  type = string
  default = "availability_private_zone"
}

variable "public_subnet_cidr_block" {
  type = string 
  default = "10.2.0.0/16"
}
variable "availability_zone" {
  type = string
  default = "availability_public_zone"
}
