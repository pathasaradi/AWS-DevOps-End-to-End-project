variable "region" {
    description = "Region for resoruce creation in which region"
    type = string
    default = "us-east-1"  
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "assume_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
} 


# variable "tags" {
#   description = "Tags to apply to the EKS cluster"
#   type        = map(string)
#   default     = {}
# }