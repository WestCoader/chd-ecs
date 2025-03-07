## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_variable.repo](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/actions_variable) | resource |
| [github_branch_protection.repo](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.repo](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AWS_REGION"></a> [AWS\_REGION](#input\_AWS\_REGION) | n/a | `string` | `"AWS_REGION"` | no |
| <a name="input_aws_region_value"></a> [aws\_region\_value](#input\_aws\_region\_value) | n/a | `string` | `"us-west-2"` | no |
| <a name="input_branch_name"></a> [branch\_name](#input\_branch\_name) | n/a | `string` | `"main"` | no |
| <a name="input_branch_restrictions"></a> [branch\_restrictions](#input\_branch\_restrictions) | n/a | `list(string)` | `[]` | no |
| <a name="input_dismiss_stale_reviews"></a> [dismiss\_stale\_reviews](#input\_dismiss\_stale\_reviews) | n/a | `bool` | `true` | no |
| <a name="input_enforce_admins"></a> [enforce\_admins](#input\_enforce\_admins) | n/a | `bool` | `true` | no |
| <a name="input_repository_description"></a> [repository\_description](#input\_repository\_description) | n/a | `string` | `"CHD Demo Repo"` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | n/a | `string` | n/a | yes |
| <a name="input_repository_visibility"></a> [repository\_visibility](#input\_repository\_visibility) | n/a | `string` | `"public"` | no |
| <a name="input_require_code_owner_reviews"></a> [require\_code\_owner\_reviews](#input\_require\_code\_owner\_reviews) | n/a | `bool` | `false` | no |
| <a name="input_required_approving_review_count"></a> [required\_approving\_review\_count](#input\_required\_approving\_review\_count) | n/a | `number` | `1` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | n/a | `string` | `"all"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_branch_protection"></a> [branch\_protection](#output\_branch\_protection) | n/a |
| <a name="output_repository_name"></a> [repository\_name](#output\_repository\_name) | n/a |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | n/a |
