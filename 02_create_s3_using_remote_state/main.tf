# Bucket S3
resource "aws_s3_bucket" "bucket_s3_resource" {
  bucket = var.bucket_name
  tags = var.tags
}

resource "aws_s3_bucket_versioning" "bucket_s3_versioning_name" {
    bucket = aws_s3_bucket.bucket_s3_resource.id
    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_s3_bucket_public_access_block" "name" {
  bucket = aws_s3_bucket.bucket_s3_resource.id
  
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

