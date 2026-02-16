resource "aws_internet_gateway" "main" {
vpc_id = var.aws_vpc
}
resource "aws_eip" "main" {
vpc = true 
}
resource "aws_nat_gateway" "main" {
allocation_id = var.eip_id
subnet_id = var.public_subnet_id
}
resource "aws_route_table" "public_route_table" {
vpc_id = var.aws_vpc
route { 
cidr_block = "0.0.0.0/0"
gateway_id = var.internet_gateway_id
}
tags  {
  Name = "public_route_table"
  }
  }
resource "aws_route_table" "private_route_table" {
vpc_id = var.aws_vpc
route {
cidr_block = "0.0.0.0/0"
nat_gateway_id = var.nat_gateway_id
}
tags {
  Name = "private_route_table"
 } 
 }
resource "aws_route_table_association" "public_association" {
subnet_id = aws_subnet.public_subnet.id
route_table_id = aws_route_table.public_route_table.id
}
resource "aws_route_table_association" "private_association" {
subnet_id = aws_subnet.private_subnet.id
route_table_id = aws_route_table.private_route_table.id
}





 






