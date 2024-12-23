terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "general-terraform"
    key     = "ec2-dev-env.tfstate"
    region  = "eu-central-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  alias  = "main"
}
