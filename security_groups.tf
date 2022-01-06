resource "aws_security_group" "ziyotek_devops_all_all" {
  name        = "allow_all"
  description = "Allow ALL inbound traffic"
  vpc_id      = aws_vpc.ziyotek_devops.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "DevOps-SG-1"
  }
}