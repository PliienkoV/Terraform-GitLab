# Provider vars
variable "gitlab_url" {
  description = "GitLab server URL"
  type = string
  default = "https://192.168.0.199/api/v4/"
}

variable "gitlab_token" {
  description = "GitLab Token"
  type = string
  default = "5bZuyii9_2FTqeZRJbUB"
}