assume_role_arn      = "arn:aws:iam::934860271541:role/Admin-Role"
region               = "us-east-1"
security_group_name  = "my-security-group"
description          = "Security group for web servers"
vpc_id               = "vpc-xxxxxxxxxxxxxxxxx"  # Replace with actual VPC ID

ingress_rules = [
  {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    description = "All outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

tags = {
  Owner        = "Parth"
  Name         = "security-group"
  Env          = "dev"
  SupportEmail = "Parth@example.com"
}