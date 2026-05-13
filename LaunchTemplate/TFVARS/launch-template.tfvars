assume_role_arn       = "arn:aws:iam::934860271541:role/Admin-Role"
region                = "us-east-1"
launch_template_name  = "my-launch-template"
ami_id                = "ami-02457590d33d576c3"  # Replace with actual AMI ID
instance_type         = "t2.micro"
security_group_ids    = ["sg-xxxxxxxxxxxxxxxxx"]  # Replace with actual security group IDs
user_data             = ""

tags = {
  Owner        = "Parth"
  Name         = "launch-template"
  Env          = "dev"
  SupportEmail = "Parth@example.com"
}