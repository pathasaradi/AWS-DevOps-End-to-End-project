provider "aws" {
    region = var.region
    assume_role {
      role_arn = var.assume_role_arn
    }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "alb.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "alb" {
  source              = "../source-modules"
  name                = var.name
  internal            = var.internal
  security_groups     = var.security_groups
  subnets             = var.subnets
  tags                = var.tags
  target_group_name   = var.target_group_name
  target_group_port   = var.target_group_port
  target_group_protocol = var.target_group_protocol
  vpc_id              = var.vpc_id
  health_check_path   = var.health_check_path
}