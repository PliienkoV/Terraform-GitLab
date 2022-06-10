#Configure the GitLab Provider
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
  insecure = true
}

# By group's full path
data "gitlab_group" "wa_main_group" {
    group_id = 5
}
# Locals
locals {
  name = "wa-${var.project_name}"
}

# Resources
resource "gitlab_group" "wa_basic_group" {
  name        = local.name
  path        = local.name
  description = "${local.name} group"
  lifecycle {
    precondition {
        condition = data.gitlab_group.wa_main_group.description == "Parent"
        error_message = "This group cant create additional projects"
    }
  }
}

# Create a project in the wa_basic_group
resource "gitlab_project" "wa_basic_project" {
  name         = "Project ${local.name}"
  description  = var.project_name
  namespace_id = gitlab_group.wa_basic_group.id
  depends_on = [
    gitlab_group.wa_basic_group
  ]
}