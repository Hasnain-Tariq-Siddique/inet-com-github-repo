####################################################################################################
# Create AWS S3 Bucket for store the Terraform state file in S3                                    #
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning #
####################################################################################################
resource "aws_s3_bucket" "s3-bucket" {
  bucket = var.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_versioning" "bucket-versioning" {
  bucket = aws_s3_bucket.s3-bucket.id
  versioning_configuration {
    status = var.status
  }
  depends_on = [ aws_s3_bucket.s3-bucket ]
}

####################################################################################################
# End AWS S3 Bucket for store the Terraform state file in S3                                       #
####################################################################################################