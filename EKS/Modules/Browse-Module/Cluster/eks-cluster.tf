provider "aws" {
    region = var.region
    assume_role {
      role_arn = var.assume_role_arn
    }
}

# terraform {
#     backend "s3" {
#         bucket = "raju-bucket-001"
#         key = "S3/s3.tfstate"
#         region = "us-east-1"
#     }
# }

module "eks" {
  source            = "../../source-modules/Cluster"
  cluster_name      = var.cluster_name
  assume_role_arn   = var.assume_role_arn
  subnet_ids        = var.subnet_ids
  cluster_version   = var.cluster_version
  tags              = var.tags
}