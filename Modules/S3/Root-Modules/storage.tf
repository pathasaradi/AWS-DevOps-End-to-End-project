provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source              = "../Source-Modules"
  bucket_name         = var.bucket_name
  environment         = var.environment
  versioning_enabled  = var.versioning_enabled
  sse_algorithm       = var.sse_algorithm
  kms_key_id          = var.kms_key_id
  tags                = var.tags
  bucket_policy_json  = var.bucket_policy_json
}
