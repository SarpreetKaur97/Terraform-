resource "aws_subnet" "private_subnet" {
vpc_id = var. aws_vpc.main.id
cidr_block = var.private_subnet_cidr_block
availability_zone = var.availability_zone 
tag = {
 Name = "private_subnet_id"}
}

