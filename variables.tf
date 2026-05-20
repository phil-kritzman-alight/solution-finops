variable "application" {
  type        = string
  description = "Application name"
}

variable "service" {
  type        = string
  description = "Service name"
}

variable "environment" {
  type        = string
  description = "Environment (dev, qa, prod)"
}

variable "is_production" {
  type        = bool
  description = "Is this a production deployment"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "suspend_versioning" {
  type        = bool
  description = "Whether to suspend versioning"
  default     = false
}

variable "payer" {
  type        = string
  description = "Billing payer type"
}

variable "ou_security_type" {
  type        = string
  description = "OU security classification"
}

variable "aws_region" {
  type        = string
  description = "AWS region (informational; pipeline sets actual region)"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to resources"
}