module "s3" {
  source = "../MODULES/S3"

  environment        = var.environment
  s3_acl             = "public-read"
  versioning_enabled = true
<<<<<<< HEAD

=======
  create_s3 = false
>>>>>>> ba92ef135590e9a68fa28cb925f1f2fe08879a9e
}