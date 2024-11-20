terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "udemy-devops-recipe-app-api-github-tfstate-760029521526"
    key            = "tf-state-setup"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "udemy-devops-recipe-app-api-github-tf-lock"
  }
}

provider "aws" {
  region = "eu-west-2"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}


