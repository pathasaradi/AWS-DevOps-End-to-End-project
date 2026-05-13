variable "region" {
  description = "Region for resource creation"
  type        = string
  default     = "us-east-1"
}

variable "assume_role_arn" {
  type = string
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "launch_template_id" {
  description = "ID of the launch template"
  type        = string
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
  default     = 2
}

variable "subnet_ids" {
  description = "List of subnet IDs for the Auto Scaling Group"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the Auto Scaling Group"
  type        = map(string)
  default     = {}
}