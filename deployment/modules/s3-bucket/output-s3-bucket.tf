output "s3-bucket-id" {
  value = aws_s3_bucket.s3-bucket.id
}

output "s3-bucket-name" {
  value = aws_s3_bucket.s3-bucket.bucket
}

output "bucket-id" {
  value = aws_s3_bucket_versioning.bucket-versioning.id
}

output "s3-bucket" {
  value = aws_s3_bucket_versioning.bucket-versioning.bucket
}