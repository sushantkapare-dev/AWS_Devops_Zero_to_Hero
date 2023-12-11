resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket-demo1
    tags = {
      Name = var.bucket-demo1
    }


}

resource "aws_s3_bucket" "my_state_bucket_new" {
    bucket = var.bucket-name
    tags = {
      Name = var.bucket-name
    }
  
}