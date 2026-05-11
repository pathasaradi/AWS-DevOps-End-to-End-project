variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, qa, prod)"
}

variable "versioning_enabled" {
  type        = bool
  default     = true
  description = "Enable versioning"
}

variable "sse_algorithm" {
  type        = string
  default     = "AES256" # Use "aws:kms" for KMS
  description = "Server-side encryption algorithm"
  validation {
    condition     = contains(["AES256", "aws:kms"], var.sse_algorithm)
    error_message = "sse_algorithm must be either 'AES256' or 'aws:kms'."
  }
}

variable "kms_key_id" {
  type        = string
  default     = ""
  description = "KMS key ID or ARN if using aws:kms"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags"

  validation {
    condition = contains(keys(var.tags), "Owner") && contains(keys(var.tags), "CostCenter")
    error_message = "Tags must include 'Owner' and 'CostCenter'."
  }
}

variable "bucket_policy_json" {
  type        = string
  default     = ""
  description = "Optional full bucket policy JSON. If empty, no policy is applied."
}
