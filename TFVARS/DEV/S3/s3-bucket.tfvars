aws_region         = "us-west-2"
bucket_name        = "devops-aws-demo-bucket-002"
environment        = "dev"
versioning_enabled = true
sse_algorithm      = "AES256"
kms_key_id         = "" # or "arn:aws:kms:us-west-2:ACCOUNT_ID:key/KEY_ID"

tags = {
  Owner      = "Dev"
  CostCenter = "1234"
  App        = "ExampleApp"
}
bucket_policy_json = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "DenyUnEncryptedObjectUploads",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::devops-aws-demo-bucket-002/*",
      "Condition": {
        "StringNotEquals": {
          "s3:x-amz-server-side-encryption": "AES256"
        }
      }
    }
  ]
}
EOT


