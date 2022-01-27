variable "region" {
  type    = string
  default = "us-east-1"
}


}

variable "sg_name" {
  description = "this variable allows you do understand the code"
  default     = "Devops allow all security group"
}





variable "sg_ingress_from_port" {
  type    = number
  default = 0
}

variable "sg_ingress_to_port" {
  type    = number
  default = 0
}

variable "sg_ingress_protocol" {
  default = "-1"
}
variable "sg_ingress_cidr_blocks" {
  description = "used for security group ingress permissions"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "sg_egress_from_port" {
  default = 0
}

variable "sg_egress_to_port" {
  default = 0
}

variable "sg_egress_protocol" {
  default = "-1"
}

variable "sg_egress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg_egress_ipv6_cidr_blocks" {
  default = ["::/0"]
}

variable "dynamodb_hash_key" {
  default = "LockID"
}

variable "dynamodb_read_capacity" {
  default = "20"
}

variable "dynamodb_write_capacity" {
  default = "20"
}

variable "dynamodb_attribute_type" {
  default = "S"
}

variable "sg_descroiption" {
  default = "allow all sg"
}

variable "ami_id" {
  default = "ami-061ac2e015473fbe2"
}

variable "instance_type" {
  default = "m5.12xlarge"
}

# variable "ami-map" {
#     type = map
#     default = {
#         "us-east-1" = "ami-061ac2e015473fbe2"
#         "us-east-2" = "ami-1234"
#     }
# }

variable "db_storage" {
  default = "10"
}

variable "db_version" {
  default = "10.15"
}

variable "db_name" {
  default = "ziyotek"
}

variable "db_username" {
  default = "ziyotekuser"
}

variable "key_name" {
  default = "devops-class-key"
}