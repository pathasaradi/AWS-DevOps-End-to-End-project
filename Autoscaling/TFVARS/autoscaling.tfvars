assume_role_arn     = "arn:aws:iam::934860271541:role/Admin-Role"
region              = "us-east-1"
asg_name            = "my-asg"
launch_template_id  = "lt-xxxxxxxxxxxxxxxxx"  # Replace with actual launch template ID
min_size            = 1
max_size            = 3
desired_capacity    = 2
subnet_ids          = ["subnet-xxxxxxxxxxxxxxxxx", "subnet-xxxxxxxxxxxxxxxxx"]  # Replace with actual subnet IDs

tags = {
  Owner        = "Parth"
  Name         = "autoscaling-group"
  Env          = "dev"
  SupportEmail = "Parth@example.com"
}