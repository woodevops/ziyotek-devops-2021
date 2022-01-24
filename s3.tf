resource "aws_s3_bucket" "devops-s3-1" {
  bucket = "${var.bucket_name}-${data.aws_region.current.id}-123456788"
  acl    = var.s3_acl
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled = var.versioning_enabled
  }

  tags = var.s3_tag

  provisioner "local-exec" {
    when = destroy
    command = "aws s3 rm s3://${self.id} --recursive"
  }
}


