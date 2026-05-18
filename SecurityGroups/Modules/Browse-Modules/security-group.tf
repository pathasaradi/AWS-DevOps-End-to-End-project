provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.assume_role_arn
  }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "security-group.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "security_group" {
  source               = "../source-modules"
  security_group_name  = var.security_group_name
  description          = var.description
  vpc_id               = var.vpc_id
  ingress_rules        = var.ingress_rules
  egress_rules         = var.egress_rules
  tags                 = var.tags
  assume_role_arn      = var.assume_role_arn
}