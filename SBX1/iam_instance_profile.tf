module "iam_ip" {
  source      = "../MODULES/IAM"
  environment = var.environment
  s3_arn      = module.s3.s3_arn
}