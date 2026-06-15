terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# create s3 bucket 
resource "aws_s3_bucket" "first_bucket" {
  bucket = "my-bucket-123456-sagar"

  tags = {
    Name        = "My bucket 2.0"
    Environment = "Dev"
  }
}
