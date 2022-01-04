resource "aws_vpc" "ziyotek_devops" {
  cidr_block = "10.10.0.0/16"


  tags = {
    Name = "DevOps-VPC"
  }
}

resource "aws_subnet" "devops_subnet_1" {
  vpc_id            = aws_vpc.ziyotek_devops.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "DevOps-Subnet-1"
  }
}