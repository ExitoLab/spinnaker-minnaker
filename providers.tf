provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 0.14.0, < 0.15.1"
  required_providers {
    aws = ">= 3.18"
  }

  backend "s3" {
    bucket         = "terraform-practice"
    key            = "spinnaker-minnaker/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform_practice_lock"

    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}