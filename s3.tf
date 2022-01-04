resource "aws_s3_bucket" "devops-s3-1" {
  bucket = "ziyotek-devops-training-bucket-rady"
  acl    = "public-read"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled = false
  }

  tags = {
    Name = "terraform bucket"
  }
}


