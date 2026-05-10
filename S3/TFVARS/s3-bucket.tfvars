bucket_name = "raju-bucket-002"
assume_role_arn = "arn:aws:iam::934860271541:role/Admin-Role"
region = "us-east-1"
versioning = true
s3_bucket_acl = "private"

tags = {
    Name = "my-s3-bucket"
    Owner = "my-bucket"
    SupportEmail = "@gmail.com"
    Env = "Development"
}


