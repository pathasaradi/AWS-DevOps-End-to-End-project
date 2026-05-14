provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "../Source-Modules/"

  aws_region = var.aws_region
  vpc_cidr   = var.vpc_cidr

  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  public_azs  = var.public_azs
  private_azs = var.private_azs

  environment = var.environment
  tags        = var.tags
}
