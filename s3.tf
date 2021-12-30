resource "aws_s3_bucket" "devops-s3" {
  bucket = "rady-ziyotek-devops-2021-start"
  acl    = "private"
  tags = {
    Name    = "ziyotek"
    purpose = "training"
    Delete  = "yes"
  }
}

# resource "aws_s3_bucket" "devops-s3-1" {
#   bucket = "rady-ziyotek-devops-2021-start-1"
#   acl    = "private"
#   tags = {
#     Name    = "ziyotek"
#     purpose = "training"
#     Delete  = "yes"
#   }
# }

