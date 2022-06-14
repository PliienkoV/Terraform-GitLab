output "web_urls" {
  description = "Main groups URL"
  value       = values(gitlab_group.wa_basic_group)[*].web_url
}