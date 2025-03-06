terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }
  backend "s3" {
    bucket = "chd-state"
    key = "tf-repos.state"
    region = "us-west-2"
    dynamodb_table = "chd-state"
  }
}

provider "github" {
}