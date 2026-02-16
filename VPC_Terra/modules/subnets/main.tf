resource "aws_subnet" "private_subnet" {
vpc_id = var.aws_vpc
cidr_block = var.private_subnet_cidr_block
availability_zone = var.availability_zone 
tag = {
 Name = "private_subnet"}
}
resource "aws_subnet" "public_subnet" {
vpc_id = var.aws_vpc
cidr_block = var.public_subnet_cidr_block
availability_zone = var.availability_zone
map_public_ip_on_launch = true
tag = {
 Name = "public_subnet"}
}
