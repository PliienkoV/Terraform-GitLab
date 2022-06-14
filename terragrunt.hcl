# Backend config

remote_state {
  backend = "s3"
  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = { 
    bucket         = "wa-223005-pvo"
    key            = "states/wa/220530.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    profile = "PVO"
  }
}

# Provider config

generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
provider "gitlab" {
    base_url = var.gitlab_url
    token    = var.gitlab_token
    insecure = true
  }
EOF
}