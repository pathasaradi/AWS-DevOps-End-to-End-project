provider "aws" {
    region = var.region
    assume_role {
      role_arn = var.assume_role_arn
    }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "eks-cluster.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "eks" {
  source            = "../../source-modules/Cluster"
  cluster_name      = var.cluster_name
  assume_role_arn   = var.assume_role_arn
  subnet_ids        = var.subnet_ids
  cluster_version   = var.cluster_version
  tags              = var.tags
}