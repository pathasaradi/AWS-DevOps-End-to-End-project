variable "region" {
    description = "Region"
    type = string
    default = "us-east-1" 
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
