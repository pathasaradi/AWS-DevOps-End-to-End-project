variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "bucket_name" {
  type        = string
  description = "Unique bucket name"
}

variable "environment" {
  type        = string
  description = "Environment (dev, qa, prod)"
}

variable "versioning_enabled" {
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  type        = string
  default     = "AES256"
}

variable "kms_key_id" {
  type        = string
  default     = ""
}

variable "tags" {
  type        = map(string)
  description = "Required tags: Owner, CostCenter"
}

variable "bucket_policy_json" {
  type        = string
  default     = ""
}
