variable "cidr_block" {
  type = string 
  default = "10.0.0.0/16"
}
variable "vpc_name" {
  type = string
  default = "vpc_prod"
}
variable "vpc_id"{
  type = string
}

