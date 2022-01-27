resource "aws_subnet" "devops_subnet_1" {
  vpc_id            = aws_vpc.ziyotek_devops.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.zone_1
}

resource "aws_subnet" "devops_subnet_2" {
  vpc_id            = aws_vpc.ziyotek_devops.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = var.zone_2
}