module "vpc" {
source = "Terraform-/VPC_Terra/modules/vpc"
cidr_block = "10.0.0.0/24"
vpc_name = "Dev_vpc"
vpc_id = aws_vpc.main.id
}
module "subnets" {
source = "Terraform-/VPC_Terra/modules/subnets"
aws_vpc = aws_vpc.main.id
private_subnet_cidr_block = "10.1.0.0/16"
private_subnet_name = "dev_private_subnet"
availability_zone = "us-east-1a"
public_subnet_cidr_block = "10.2.0.0/16"
public_subnet_name = "dev_public_subnet"
private_subnet_id = aws_subnet.private_subnet.id
public_subnet_id = aws_subnet.public_subnet.id
}
module "SG" {
source = "Terraform-/VPC_Terra/modules/SG"
aws_vpc = aws_vpc.main.id
security_group_id = aws_security_group.web_sg.id
}
module "Nacl" {
Source = "Terraform-/VPC_Terra/modules/Nacl"
aws_vpc = aws_vpc.main.id
private_subnet_id = aws_subnet.private_subnet.id
public_subnet_id = aws_subnet.public_subnet.id
}
module "IG& NAT" {
source = "Terraform-/VPC_Terra/modules/IG & NAT Association"
aws_vpc = aws_vpc.main.id
public_subnet_id = aws_subnet.public_subnet.id
eip_id = aws_eip.main.id
internet_gateway_id = aws_internet_gateway.main.id
nat_gateway_id = aws_nat_gateway.main.id
public_association_id = aws_route_table_association.public_association.id
private_association_id = aws_route_table_association.private_association.id
}
