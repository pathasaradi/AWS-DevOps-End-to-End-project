provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.assume_role_arn
  }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "autoscaling.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "autoscaling" {
  source             = "../source-modules"
  asg_name           = var.asg_name
  launch_template_id = var.launch_template_id
  min_size           = var.min_size
  max_size           = var.max_size
  desired_capacity   = var.desired_capacity
  subnet_ids         = var.subnet_ids
  tags               = var.tags
  assume_role_arn    = var.assume_role_arn
}