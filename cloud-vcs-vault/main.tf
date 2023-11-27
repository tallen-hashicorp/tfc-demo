terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  cloud {
    organization = "tallen-playground"

    workspaces {
      name = "tf-demo-cli"
    }
  }
}

provider "aws" {
  shared_credentials_files = [var.tfc_vault_backed_aws_dynamic_credentials.default.shared_credentials_file]
  region = "us-east-1"
}

resource "random_string" "s3_bucket_name" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-s3-bucket-${random_string.s3_bucket_name.result}"

  tags = {
    Name        = "MyRandomS3Bucket"
    Environment = "Dev"
  }
}