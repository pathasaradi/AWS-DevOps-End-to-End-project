provider "aws" {
    region = var.region
    assume_role {
      role_arn = var.assume_role_arn
    }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "ec2-instance.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "samplemodulesforec2" {
  source           = "../source-modules"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  root_volume_size = var.root_volume_size
  root_volume_type = var.root_volume_type
  tags             = var.tags
  assume_role_arn = var.assume_role_arn
}