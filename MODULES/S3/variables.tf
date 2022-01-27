variable "region" {
  type    = string
  default = "us-east-1"
}

variable "versioning_enabled" {
  type    = bool
  default = false
}

variable "bucket_name" {
  default = "rady-paskalev-123456"
}

variable "s3_acl" {
  default = "private"
}

variable "environment" {
    default = ""
}