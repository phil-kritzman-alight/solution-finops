terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "kms" {
  source = "git::codecommit://module-aws-kms?ref=v2"

  alias_name   = "alias/finops-s3"
  description  = "KMS key for FinOps S3 bucket encryption"
  is_production = true
}

module "s3_bucket" {
  source = "git::codecommit://module-aws-s3?ref=v2"

  bucket_name = var.bucket_name

  # Security
  kms_key_alias = module.kms.kms_key_alias
  object_ownership = "BucketOwnerEnforced"

  # Public access block (mandatory)
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  # Versioning & MFA
  versioning_enabled = false
  mfa_delete_enabled = false

  # Access logging (mandatory for prod)
  enable_access_logging = true

  # Custom bucket policy
  bucket_policy = data.aws_iam_policy_document.s3_bucket_policy.json

  # User-defined tags ONLY
  tags = {
    DataClassification = var.data_classification
  }
}

data "aws_iam_policy_document" "s3_bucket_policy" {

  statement {
    sid     = "DenyHTTPRequests"
    effect  = "Deny"
    actions = ["s3:*"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    resources = [
      "arn:aws:s3:::${var.bucket_name}",
      "arn:aws:s3:::${var.bucket_name}/*"
    ]

    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }

  statement {
    sid     = "DenyTLSLessThan12"
    effect  = "Deny"
    actions = ["s3:*"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    resources = [
      "arn:aws:s3:::${var.bucket_name}",
      "arn:aws:s3:::${var.bucket_name}/*"
    ]

    condition {
      test     = "NumericLessThan"
      variable = "s3:TlsVersion"
      values   = ["1.2"]
    }
  }
}