bucket_name = "devops-aws-demo-bucket-002"
assume_role_arn = "arn:aws:iam::338034595180:role/GitHub-Actions-Role"
github_actions_role_arn = "arn:aws:iam::338034595180:role/GitHub-Actions-Role"
region = "us-east-1"
versioning = true
s3_bucket_acl = "private"

tags = {
    Name = "my-s3-bucket"
    Owner = "my-bucket"
    SupportEmail = "@gmail.com"
    Env = "Development"
}


