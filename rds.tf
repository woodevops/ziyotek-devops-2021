resource "aws_db_instance" "ziyotek_devops_db" {
  allocated_storage      = 10
  engine                 = "postgres"
  engine_version         = "10.15"
  instance_class         = "db.t2.micro"
  name                   = "ziyotek"
  username               = "zyotekuser"
  password               = "ziyotek12345"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.ziyotek_db_sg.id
  vpc_security_group_ids = [aws_security_group.ziyotek_devops_all_all.id]
}

resource "aws_db_subnet_group" "ziyotek_db_sg" {
  name       = "ziyotek"
  subnet_ids = [aws_subnet.devops_subnet_1.id, aws_subnet.devops_subnet_2.id]
}