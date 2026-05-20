module "s3" {
  source = "git::codecommit://module-aws-s3?ref=v2"

  application   = var.application
  service       = var.service
  environment   = var.environment
  is_production = var.is_production

  bucket_name        = var.bucket_name
  suspend_versioning = var.suspend_versioning

  kms_key_arn = ""

  tags = var.tags
}