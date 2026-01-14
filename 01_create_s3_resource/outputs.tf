output "bucket_arn" {
  value = aws_s3_bucket.bucket_s3_resource.arn
  description = "The ARN of the new butcket"
}

output "bucket_domain_name" {
  value = aws_s3_bucket.bucket_s3_resource.bucket_domain_name
  description = "The DOMAIN NAME of the new butcket"
}