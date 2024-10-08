terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider - alias name is create infra as mutipile regions
provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
  }

  provider "aws" {
  alias = "us-east-2"  
  region = "us-east-2"
  }

  provider "aws" {
  alias = "us-west-1"  
  region = "us-west-1"
  }
