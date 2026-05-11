resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  # Ownership is enforced by default for new buckets; ACLs are not used
  tags = merge(
    {
      Environment = var.environment
      ManagedBy   = "Terraform"
    },
    var.tags
  )
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.versioning_enabled ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
      kms_master_key_id = var.kms_key_id != "" ? var.kms_key_id : null
    }
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Optional: Bucket policy (example: restrict to specific principals if provided)
resource "aws_s3_bucket_policy" "this" {
  count  = var.bucket_policy_json != "" ? 1 : 0
  bucket = aws_s3_bucket.this.id
  policy = var.bucket_policy_json
}
