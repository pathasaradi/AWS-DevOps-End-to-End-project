variable "region" {
    description = "Region"
    type = string
    default = "ap-south-1" 
}

variable "assume_role_arn" {
    description = "IAM role ARN for assume-role usage"
    type = string
    default = ""
}

variable "s3_bucket_acl" {
   description = "acl"
   type = string
   default = "private"
}

variable "enable_bucket_policy" {
  description = "Enable the default S3 bucket policy and public access protections."
  type        = bool
  default     = true
}

variable "github_actions_role_arn" {
  description = "IAM role ARN for GitHub Actions access to the S3 bucket."
  type        = string
}

variable "bucket_name" {
    description = "bucket name"
    type = string 
}

variable "versioning" {
   type = bool
   default = false
}

variable "tags" {
    description = "tags for resources"
    type = map(string)
}
