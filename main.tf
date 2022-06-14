# Backend config

# terraform {
#   backend "s3" {
#     bucket         = "wa-223005-pvo"
#     key            = "states/wa/220530.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-lock"
#     profile = "PVO"
#   }
# }

# Configure the GitLab Provider
# provider "gitlab" {
#   base_url = var.gitlab_url
#   token    = var.gitlab_token
#   insecure = true
# }

#
module "gitlab_groups" {
  source        = "./modules/gitlab_groups"
  project_names = var.project_names
}