variable "region" {
    description = "Region for resource creation in which region"
    default = "us-east-1"  
}

variable "assume_role_arn" {
    type = string
}
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Root volume type"
  type        = string
  default     = "gp2"
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed for SSH access"
  type        = list(string)
  default     = ["10.0.0.0/8"]  # Default to private range
}

variable "http_cidr_blocks" {
  description = "CIDR blocks allowed for HTTP access"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Keep public for web server
}

variable "vpc_id" {
  description = "VPC ID where the EC2 instance will be launched"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EC2 instance"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}