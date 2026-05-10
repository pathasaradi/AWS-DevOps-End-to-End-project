variable "region" {
    description = "Region"
    type = string
    default = "us-east-1" 
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
   type = string
   default = "false"
}

variable "tags" {
    description = "tags for resources"
}
