module "vpc" {
  source = "../MODULES/VPC"
 
  vpc_cidr = "10.20.0.0/16"
  subnet_1_cidr = "10.20.1.0/24"
  subnet_2_cidr = "10.20.2.0/24"
}