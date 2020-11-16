# terraform-icon-analytics-aws-network

[![open-issues](https://img.shields.io/github/issues-raw/insight-icon/terraform-icon-analytics-aws-network?style=for-the-badge)](https://github.com/insight-icon/terraform-icon-analytics-aws-network/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-icon/terraform-icon-analytics-aws-network?style=for-the-badge)](https://github.com/insight-icon/terraform-icon-analytics-aws-network/pulls)

## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```
module "this" {
    source = "github.com/insight-icon/terraform-icon-analytics-aws-network"

}
```
## Examples

- [defaults](https://github.com/insight-icon/terraform-icon-analytics-aws-network/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| azs | List of availability zones | `list(string)` | n/a | yes |
| cidr | The cidr range for network | `string` | `"10.0.0.0/16"` | no |
| create | Bool to create | `bool` | `true` | no |
| enable\_prometheus | Enable prometheus monitoring | `bool` | `true` | no |
| id | The id of the resources | `string` | n/a | yes |
| private\_subnets | List of cidr ranges for private subnets | `list(string)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24",<br>  "10.0.103.0/24"<br>]</pre> | no |
| public\_subnets | List of cidr ranges for public subnets | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| tags | Tags for resources | `map(string)` | `{}` | no |
| vpc\_name | The name of the VPC | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| azs | n/a |
| private\_route\_table\_ids | n/a |
| private\_subnets | n/a |
| private\_subnets\_cidr\_blocks | n/a |
| public\_subnet\_cidr\_blocks | n/a |
| public\_subnets | n/a |
| sg\_bastion\_private\_id | n/a |
| sg\_bastion\_public\_id | #### sgs #### |
| sg\_prometheus\_id | n/a |
| sg\_rds\_id | n/a |
| sg\_redshift\_id | n/a |
| vpc\_id | #### VPC #### |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [insight-icon](https://github.com/insight-icon)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.