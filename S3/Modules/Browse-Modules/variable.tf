variable "region" {
    description = "Region for resoruce creation in which region"
    type = string
    default = "us-east-1"  
}

variable "assume_role_arn" {
    type = string
}

variable "bucket_name" {
    description = "bucket name should be uniqu"
    type = string
    # validation {
    #   condition = can(regex("s3-my(A|B)-(1|2)-[a-z0-9]$",var.bucket_name))
    #   error_message = "bucket should follow above naming convetions"    
    # }
}
variable "s3_bucket_acl" {
    description = "tags for resources"
    type = string
}
# variable "bucket_policy" {
#     description = "tags for resources"
#     type = string
# }
variable "versioning" {
    type = string
    # validation {
    #   condition = var.versioning == true
    #   error_message = "Objet versioning required to be true"
    # }
}


