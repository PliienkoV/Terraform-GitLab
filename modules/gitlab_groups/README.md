<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >=1.2.0 |
| gitlab | ~> 3.15.0 |

## Providers

| Name | Version |
|------|---------|
| gitlab | ~> 3.15.0 |

## Resources

| Name | Type |
|------|------|
| [gitlab_group.wa_basic_group](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |
| [gitlab_project.wa_basic_project](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |
| [gitlab_group.wa_main_group](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_names | Onboard project name | `list` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| web\_urls | Main groups URL |
<!-- END_TF_DOCS -->