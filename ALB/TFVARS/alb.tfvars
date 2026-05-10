assume_role_arn = "arn:aws:iam::934860271541:role/Admin-Role"
region = "us-east-1"

name              = "my-alb"
internal          = false
security_groups   = ["sg-06f445f048f3f22b7"]
subnets           = ["subnet-00eb36217bc7aa8be", "subnet-0f57dcaeb44dd2e6a"]
tags = {
  Owner        = "Raju"
  Name         = "my-alb-new"
  Env          = "dev"
  SupportEmail = "Raju@example.com"
}
target_group_name     = "my-new-tg-001"
target_group_port     = 80
target_group_protocol = "HTTP"
vpc_id               = "vpc-0d252a89556af1fa0"
health_check_path     = "/"