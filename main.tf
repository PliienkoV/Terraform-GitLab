#Configure the GitLab Provider
provider "gitab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
}
