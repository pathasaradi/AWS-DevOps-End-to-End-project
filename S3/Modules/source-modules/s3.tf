resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name
    tags = var.tags
    versioning {
      enabled = var.versioning
    }
#   logging {
#     target_bucket = var.target_bucket
#     target_prefix = "log/"
#   }
#   server_side_encryption_configuration {
#     rule {
#       apply_server_side_encryption_by_default {
#         kms_master_key_id = var.kms_key_arn
#         sse_algorithm = var.sse_algorithm
#       }
#     }
#   }

}
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# resource "aws_s3_bucket_logging" "logging" {
#     bucket = aws_s3_bucket.s3_bucket.id
#     target_bucket = var.target_bucket
#     target_prefix = "/log/"
# }

