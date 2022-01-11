resource "aws_instance" "ziyotek-instance-1" {
  ami                         = "ami-061ac2e015473fbe2"
  instance_type               = var.instance_type
  associate_public_ip_address = true #bool
  subnet_id                   = aws_subnet.devops_subnet_1.id
  key_name                    = var.my_ssh_key
  vpc_security_group_ids      = [aws_security_group.ziyotek_devops_all_all.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.id
  user_data                   = file("userdata.sh")
}

