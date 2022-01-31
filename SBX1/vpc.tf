module "vpc" {
  source = "../MODULES/VPC"

  vpc_cidr      = "10.10.0.0/16"
  subnet_1_cidr = "10.10.1.0/24"
  subnet_2_cidr = "10.10.2.0/24"
}