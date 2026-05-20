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

variable "tags" {
  type        = map(string)
  description = "Tags applied to resources"
}