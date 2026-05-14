aws_region = "ap-south-1"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24",
  "10.0.13.0/24"
]

public_azs = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

private_azs = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

environment = "dev"

tags = {
  Project = "VPC"
  Owner   = "DevOps"
}