variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "vpc_cidr" {
  type        = string
}

variable "public_subnet_cidr" {
  type        = string
}

variable "private_subnet_cidr" {
  type        = string
}

variable "public_az" {
  type        = string
}

variable "private_az" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "tags" {
  type        = map(string)
}
