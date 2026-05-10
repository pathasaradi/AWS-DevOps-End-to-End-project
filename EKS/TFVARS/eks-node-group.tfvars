region          = "us-east-1"
assume_role_arn = "arn:aws:iam::934860271541:role/Admin-Role"

node_group_name = "my-node-group-001"
cluster_name    = "my-eks-cluster-001"
subnet_ids      = ["subnet-00eb36217bc7aa8be", "subnet-0f57dcaeb44dd2e6a"]
desired_size    = 2
max_size        = 3
min_size        = 1
instance_types  = ["t3.medium"]

# eks_addons = {
#   "vpc-cni" = {
#     addon_version = "v1.18.1-eksbuild.1"
#   }
#   "coredns" = {
#     addon_version = "v1.11.1-eksbuild.6"
#   }
#   "aws-load-balancer-controller" = {
#     addon_version            = "v2.7.1-eksbuild.1"
#     service_account_role_arn = "arn:aws:iam::<account-id>:role/AWSLoadBalancerControllerIAMRole"
#   }
# }

tags = {
  Owner        = "your.name"
  Name         = "my-node-group"
  Env          = "dev"
  SupportEmail = "your.email@example.com"
}