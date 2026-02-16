resource "aws_security_group" "web_sg" {
name = "sg"
vpc_id = var.aws_vpc 
ingress {
  from_port = 80
  to_port = 80
  protocal = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
   }
ingress {
  from_port = 443
  to_port = 443
  protocal = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
   }
egress {
  from_port = 0
  to_port = 0
  protocal = "-1"
  cidr_blocks = ["0.0.0.0/0"]
   }


