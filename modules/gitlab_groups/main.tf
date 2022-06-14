# By group's full path
data "gitlab_group" "wa_main_group" {
  group_id = 5
}
# Locals
locals {
  name-prefix = "wa"
}

# Resources

# Create group
resource "gitlab_group" "wa_basic_group" {
    for_each = toset(var.project_names)
  name        = "${local.name-prefix}-${each.key}"
  path        = "${local.name-prefix}-${each.key}"
  description = "${local.name-prefix}-${each.key} group"
  lifecycle {
    precondition {
      condition     = data.gitlab_group.wa_main_group.description == "Parent"
      error_message = "This group cant create additional projects"
    }
  }
}

# Create a project in the wa_basic_group
resource "gitlab_project" "wa_basic_project" {
    for_each = gitlab_group.wa_basic_group
  name         = "${each.value.name} project"
  description  = "${each.value.name} project description"
  namespace_id = each.value.id
  depends_on = [
    gitlab_group.wa_basic_group
  ]
}