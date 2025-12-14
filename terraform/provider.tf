provider "aws" {
  region = "ap-south-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "devops-tfstate-bucket-karthik"
    key     = "ec2-project/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
