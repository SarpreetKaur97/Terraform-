resource "aws_ec2_instance" "ec2_infra" {
ami = var.aws_ec2_ami
subnet = var.aws
intance_type = var.aws
