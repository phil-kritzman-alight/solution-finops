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

variable "service_2" {
  type        = string
  description = "Service name for second S3 bucket"
}

variable "bucket_name_2" {
  type        = string
  description = "S3 bucket name for second bucket"
}

variable "suspend_versioning_2" {
  type        = bool
  description = "Whether to suspend versioning for second bucket"
  default     = false
}