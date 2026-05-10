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


module "eks_node_group" {
  source          = "../../source-modules/eks-node-group"
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  subnet_ids      = var.subnet_ids
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  instance_types  = var.instance_types
  tags            = var.tags
}

# module "eks_addons" {
#   source       = "../../modules/eks-node-group"
#   cluster_name = var.cluster_name
#   eks_addons   = var.eks_addons
#   tags         = var.tags
# }