assume_role_arn = "arn:aws:iam::934860271541:role/Admin-Role"
region = "us-east-1"
ami_id           = "ami-02457590d33d576c3"   # Replace with a valid Amazon Linux 2 AMI ID for your region
instance_type    = "t2.micro"
root_volume_size = 10
root_volume_type = "gp2"

tags = {
  Owner        = "Parth"
  Name         = "nginx-instance"
  Env          = "dev"
  SupportEmail = "Parth@example.com"
}