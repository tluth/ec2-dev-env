terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "general-terraform"
    key     = "ec2-dev-env.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  alias  = "main"
}
