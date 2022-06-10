# Provider vars
variable "gitlab_url" {
  description = "GitLab server URL"
  type        = string
  default     = "https://192.168.0.199/api/v4/"
}

variable "gitlab_token" {
  description = "GitLab Token"
  type        = string
  sensitive   = true
  default     = "yzek28ojZj1nCmUn5_mj"
}

variable "project_name" {
  description = "Onboard project name"
  type        = string
  validation {
    condition = lower(var.project_name) == var.project_name
    error_message = "Validation condition of the project name. Must be lowercase"
  }
}