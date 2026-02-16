resource "aws_network_acl" "public_private_nacl" {
name = "nacl"
vpc_id = var.aws_vpc
ingress {
  from_port = 80
  to_port = 80
  protocal = "tcp"
  cidr_block = "0.0.0.0/0"
  rule_action = "allow"
  rule_number = 100
  }
ingress {
  from_port = 443
  to_port = 443
  protocal = "tcp"
  cidr_block = "0.0.0.0/0"
  rule_action = "allow"
  rule_number = 120
  }
egress {
  from_port = 0
  to_port = 0
  protocal = "-1"
  cidr_block = "0.0.0.0/0"
  rule_action = "allow"
  rule_number = 100
  }
ingress {
  from_port = 0
  to_port = 0
  protocal = "-1"
  cidr_block = "0.0.0.0/0"
  rule_action = "deny"
  rule_number = 130
  }
resource "aws_network_acl_association" "private_nacl_association" {
subnet_id = var.private_subnet_id
network_acl_id = aws_network_acl.private_public_nacl.id
}
resource "aws_network_acl_association" "public_nacl_association" {
subnet_id = var.public_subnet_id
network_acl_id = aws_network_acl.private_public_nacl.id
}


  
