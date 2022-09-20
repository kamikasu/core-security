terraform {
  backend "s3" {
    bucket         = "terraform-threepoints"
    key            = "core/security.tfstate"
    region         = "us-east-1"
    encrypt        = false
    dynamodb_table = "terraform-states-lock"
  }
}

provider "aws" {
  region = var.region
  # assume_role {
  #   role_arn = var.workspace_iam_roles[terraform.workspace]
  # }
}

locals {
  name        = "${var.organization}-${terraform.workspace}"
  common_tags = {
    Terraform   = true
    Project     = var.project
    Environment = terraform.workspace
    Type        = var.type
  }
}
