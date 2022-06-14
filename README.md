<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >=1.2.0 |
| gitlab | ~> 3.15.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| gitlab\_groups | ./modules/gitlab_groups | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gitlab\_token | GitLab Token | `string` | `"yzek28ojZj1nCmUn5_mj"` | no |
| gitlab\_url | GitLab server URL | `string` | `"https://gitlab.cypher.com/api/v4/"` | no |
| project\_names | Onboard project name | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| group\_url | Main group URL |
<!-- END_TF_DOCS -->
