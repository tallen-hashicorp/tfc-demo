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

provider "vault" {
  // skip_child_token must be explicitly set to true as TFC manages the token lifecycle
  skip_child_token = true
  address          = var.tfc_vault_dynamic_credentials.default.address
  namespace        = var.tfc_vault_dynamic_credentials.default.namespace

  auth_login_token_file {
    filename = var.tfc_vault_dynamic_credentials.default.token_filename
  }
}

provider "vault" {
  // skip_child_token must be explicitly set to true as TFC manages the token lifecycle
  skip_child_token = true
  alias            = "ALIAS1"
  address          = var.tfc_vault_dynamic_credentials.aliases["ALIAS1"].address
  namespace        = var.tfc_vault_dynamic_credentials.aliases["ALIAS1"].namespace

  auth_login_token_file {
    filename = var.tfc_vault_dynamic_credentials.aliases["ALIAS1"].token_filename
  }
}


provider "aws" {
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