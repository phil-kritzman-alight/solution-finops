output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = module.s3.bucket_name
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.s3.bucket_arn
}

output "bucket_policy_arn" {
  description = "ARN of the bucket policy"
  value       = module.s3.bucket_policy_arn
}