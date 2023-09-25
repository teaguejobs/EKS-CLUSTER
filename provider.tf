#----------------root/providers.tf-----
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# configure backend
# terraform {
#   backend "s3" {
#     bucket         = "teague-dev-terraform-bucket"
#     key            = "terraform.tfstate"
#     region         = "us-east-2"
#     profile        = "teaguejobs"
#     dynamodb_table = "terraform-state-lock-dynamodb"
#   }
# }