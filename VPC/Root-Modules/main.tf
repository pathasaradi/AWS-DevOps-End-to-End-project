provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source              = "../Source-Modules/"
  aws_region          = var.aws_region
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_az           = var.public_az
  private_az          = var.private_az
  environment         = var.environment
  tags                = var.tags
}
