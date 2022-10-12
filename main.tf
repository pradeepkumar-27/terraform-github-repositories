terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~>5.0"
    }
  }

  backend "s3" {
    region         = var.region
    encrypt        = var.encrypt
    bucket         = var.bucket
    key            = var.key
    dynamodb_table = var.dynamodb_table
  }
}

provider "github" {}

module "github_repositories" {
  source = "./modules/github-repository"

  repositories = [
    "terraform-aws-iam"
  ]
  github_branch         = "develop"
  github_source_branch  = "main"
  github_template_owner = var.github_template_owner
}