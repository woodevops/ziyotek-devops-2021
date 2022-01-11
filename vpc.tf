resource "aws_vpc" "ziyotek_devops" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "DevOps-VPC"
  }
}

resource "aws_subnet" "devops_subnet_1" {
  vpc_id            = aws_vpc.ziyotek_devops.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.zone_1
  tags = {
    Name = "DevOps-Subnet-1"
  }
}

resource "aws_subnet" "devops_subnet_2" {
  vpc_id            = aws_vpc.ziyotek_devops.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = var.zone_2
  tags = {
    Name = "DevOps-Subnet-2"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.ziyotek_devops.id
}

resource "aws_route_table" "training" {
  vpc_id = aws_vpc.ziyotek_devops.id

}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.devops_subnet_1.id
  route_table_id = aws_route_table.training.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.devops_subnet_2.id
  route_table_id = aws_route_table.training.id
}

resource "aws_route" "r" {
  route_table_id         = aws_route_table.training.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}
