output "s3_arn" {
    value = aws_s3_bucket.devops-s3-1[0].arn
}