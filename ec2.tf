resource "aws_instance" "ziyotek-instance-1" {
  ami           = "ami-061ac2e015473fbe2"
  instance_type = "t2.micro"
  associate_public_ip_address = true #bool

  key_name = "rady_key_new"
}