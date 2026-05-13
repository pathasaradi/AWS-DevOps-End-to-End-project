provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.assume_role_arn
  }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "launch-template.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "launch_template" {
  source              = "../source-modules"
  launch_template_name = var.launch_template_name
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  security_group_ids  = var.security_group_ids
  user_data           = var.user_data
  tags                = var.tags
  assume_role_arn     = var.assume_role_arn
}