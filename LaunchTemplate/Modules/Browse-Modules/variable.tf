variable "region" {
  description = "Region for resource creation"
  type        = string
  default     = "us-east-1"
}

variable "assume_role_arn" {
  type = string
}

variable "launch_template_name" {
  description = "Name of the launch template"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the launch template"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the launch template"
  type        = string
  default     = "t2.micro"
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the launch template"
  type        = map(string)
  default     = {}
}