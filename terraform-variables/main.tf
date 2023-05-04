terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}