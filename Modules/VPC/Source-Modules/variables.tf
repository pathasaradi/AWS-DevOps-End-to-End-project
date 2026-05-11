variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for the private subnet"
}

variable "public_az" {
  type        = string
  description = "Availability zone for public subnet"
}

variable "private_az" {
  type        = string
  description = "Availability zone for private subnet"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, qa, prod)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  validation {
    condition     = contains(keys(var.tags), "Owner") && contains(keys(var.tags), "CostCenter")
    error_message = "Tags must include 'Owner' and 'CostCenter'."
  }
}
