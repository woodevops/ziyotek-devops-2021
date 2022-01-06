variable "ami_id" {
    default = "ami-061ac2e015473fbe2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "my_ssh_key" {
  default = "rady_key_new"
}

variable "bucket_name" {
  description = "Put here your unique s3 bucket name"
}

variable "s3_acl" {
  default = "public-read"
}

variable "versioning_enabled" {
  default = true
}

variable "vpc_cidr" {
  default = "10.10.0.0/16"
}

variable "subnet_1_cidr" {
  default = "10.10.1.0/24"
}

variable "subnet_2_cidr" {
  default = "10.10.2.0/24"
}

variable "zone_1" {
  default = "us-east-1a"
}

variable "zone_2" {
  default = "us-east-1b"
}