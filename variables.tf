# Provider vars
variable "gitlab_url" {
  description = "GitLab server URL"
  type        = string
  default     = "https://gitlab.cypher.com/api/v4/"
}

variable "gitlab_token" {
  description = "GitLab Token"
  type        = string
  sensitive   = true
}

variable "project_names" {
  description = "Onboard project name"
  type        = list(any)
}