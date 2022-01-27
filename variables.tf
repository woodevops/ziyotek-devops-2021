variable "region" {
  type    = string
  default = "us-east-1"
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

