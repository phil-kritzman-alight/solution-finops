variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "data_classification" {
  type        = string
  description = "Data classification tag"
}