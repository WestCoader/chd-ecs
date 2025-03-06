terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"
    }
  }
  backend "s3" {
    bucket = "chd-state"
    key = "tf-ecs.state"
    region = "us-west-2"
    dynamodb_table = "chd-state"
  }
}

provider "aws" {
  region = "us-west-2"
}