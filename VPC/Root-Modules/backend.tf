terraform {
  backend "s3" {
    bucket         = "devops-aws-demo-bucket-002"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"   # 👈 must match bucket region
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
