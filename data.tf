

output "data-source-ami" {
    value = data.aws_ami.example.image_id
}

data "aws_region" "current" {}


