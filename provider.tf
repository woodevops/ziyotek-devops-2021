provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "s3" {
    bucket         = "rady-bucket-1-0-0"
    key            = "ec2-example/devops/terraform.tfstate"
    region         = "us-east-1"
   #dynamodb_table = "terraform-lock"
   #encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.45"
    }
  }
}