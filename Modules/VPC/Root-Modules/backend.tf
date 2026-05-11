terraform {
  backend "s3" {
    bucket         = "terraform.tf.backend"
    key            = "vpc-root/terraform.tfstate"
    region         = "ap-south-1"   # 👈 must match bucket region
    #dynamodb_table = "terraform-locks"
    #encrypt        = true
  }
}
