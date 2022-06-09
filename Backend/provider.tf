terraform {
  required_providers {
    aws = {
      source ="hashicorp/aws"
      version = ">=2.7.0"
    }
  }
}
provider "aws" {
#  shared_credentials_file = "$HOME/jenkins/.aws/credentials"
#  profile                 = "default"
  region                  = var.aws_region
default_tags {
    tags = {
      Environment = "UAT"
      Project        = "Courtcanva"
    }
  }
}
terraform {
  backend  "s3" {
 key = "uat/backend/terraform.tfstate"
 region = "ap-southeast-2"
 bucket = "cc-terraform-state-file"
 dynamodb_table = "terraform-state-locking"
#encrypt = true # Optional, S3 Bucket Server Side Encryption
 }
}
