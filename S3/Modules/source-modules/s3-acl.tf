resource "aws_s3_bucket_acl" "s3_bucket_acl" {
    bucket = aws_s3_bucket.s3_bucket.id
    acl = "private"
}

# resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
#     bucket = aws_s3_bucket.s3_bucket.id
#     rule {
#       object_ownership = "BucketOwnerEnforced"
#     }
# }