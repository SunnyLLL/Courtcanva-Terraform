terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
default_tags {
    tags = {
      Environment = "UAT"
      Project        = "Courtcanva"
    }
  }

}

data "aws_availability_zones" "available" {}

