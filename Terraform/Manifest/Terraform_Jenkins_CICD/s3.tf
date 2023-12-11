resource "aws_s3_bucket" "example_bucke" {
    bucket = var.bucket_name

    versioning {
      enabled = true
    }

    acl = var.acl
}