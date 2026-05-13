provider "aws" {
    region = var.region
    assume_role {
      role_arn = var.assume_role_arn
    }
}

terraform {
    backend "s3" {
        bucket         = "devops-aws-demo-bucket-002"
        key            = "s3-bucket.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}

module "samplemodulesfors3bucket" {
    source = "../source-modules"
    #bucket_policy = var.bucket_policy
    #bucket_policy_enabled = var.bucket_policy_enabled
    # policy = var.policy
    # acl = var.acl
    # kms_key_arn = var.kms_key_arn
    # sse_algorithm = var.sse_algorithm
    # s3_bucket_acl = var.s3_bucket_acl
    bucket_name = var.bucket_name
    versioning = var.versioning
    tags = var.tags
}
