terraform {
  backend "s3" {
    bucket = "SushantOps-cicd-bucket"
    key = "my-terraform-environment/main"
    region = "ap-south-1"
    dynadynamodb_table = "SushantOps-dynamo-db-table"   
  }
}