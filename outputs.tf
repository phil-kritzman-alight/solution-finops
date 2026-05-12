output "bucket_name" {
  value       = module.s3_bucket.bucket_name
  description = "S3 bucket name"
}

output "bucket_arn" {
  value       = module.s3_bucket.bucket_arn
  description = "S3 bucket ARN"
}