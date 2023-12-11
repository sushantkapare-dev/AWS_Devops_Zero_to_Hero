#creating terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
  }

  required_version = "~> 1.4.6"
}

provider "aws" {
  region = "us-east-1"
}