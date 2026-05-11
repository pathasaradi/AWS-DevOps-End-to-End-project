terraform {
  backend "s3" {
    bucket         = "terraform.tf.backend"   # create this once
    key            = "s3-root/terraform.tfstate"   # path in bucket
    region         = "ap-south-1"
    # dynamodb_table = "terraform-locks"             # create this once
    # encrypt        = true
  }
}
