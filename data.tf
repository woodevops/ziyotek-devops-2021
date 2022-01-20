data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20211001.1-x86_64-gp2"]
  }
}

output "data-source-ami" {
    value = data.aws_ami.example.image_id
}

data "aws_region" "current" {}


