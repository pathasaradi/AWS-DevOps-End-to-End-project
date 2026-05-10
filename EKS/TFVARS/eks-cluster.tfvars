assume_role_arn = "arn:aws:iam::934860271541:role/Admin-Role"
region = "us-east-1"

cluster_name    = "my-eks-cluster-001"
cluster_version = "1.29"
subnet_ids      = ["subnet-00eb36217bc7aa8be", "subnet-0f57dcaeb44dd2e6a"]
vpc_id          = "vpc-0d252a89556af1fa0"
tags = {
  Owner        = "Raju"
  Name         = "my-alb-new"
  Env          = "dev"
  SupportEmail = "Raju@example.com"
}