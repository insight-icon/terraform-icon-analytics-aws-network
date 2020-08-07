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
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allow\_ssh\_commands | Allows the SSH user to execute one-off commands. Pass 'True' to enable. Warning: These commands are not logged and increase the vulnerability of the system. Use at your own discretion. | `string` | `""` | no |
| azs | List of availability zones | `list(string)` | n/a | yes |
| bastion\_host\_name | The hostname for bastion | `string` | `"bastion"` | no |
| bastion\_monitoring\_enabled | Cloudwatch monitoring on bastion | `bool` | `true` | no |
| bucket\_force\_destroy | The bucket and all objects should be destroyed when using true | `bool` | `false` | no |
| bucket\_name | Bucket name were the bastion will store the logs | `string` | `""` | no |
| bucket\_versioning | Enable bucket versioning or not | `bool` | `true` | no |
| cidr | The cidr range for network | `string` | `"10.0.0.0/16"` | no |
| create | Bool to create | `bool` | `true` | no |
| domain\_name | #### DNS #### | `string` | `""` | no |
| enable\_bastion | Bool to enable bastion | `bool` | `true` | no |
| enable\_prometheus | Enable prometheus monitoring | `bool` | `true` | no |
| extra\_user\_data\_content | Additional scripting to pass to the bastion host. For example, this can include installing postgresql for the `psql` command. | `string` | `""` | no |
| id | The id of the resources | `string` | n/a | yes |
| instance\_type | The instance type of the bastion instances. | `string` | `"t2.nano"` | no |
| log\_auto\_clean | Enable or not the lifecycle | `bool` | `false` | no |
| log\_expiry\_days | Number of days before logs expiration | `number` | `90` | no |
| log\_glacier\_days | Number of days before moving logs to Glacier | `number` | `60` | no |
| log\_standard\_ia\_days | Number of days before moving logs to IA Storage | `number` | `30` | no |
| private\_subnets | List of cidr ranges for private subnets | `list(string)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24",<br>  "10.0.103.0/24"<br>]</pre> | no |
| public\_key\_paths | List of paths to public ssh keys | `list(string)` | `[]` | no |
| public\_ssh\_port | Set the SSH port to use from desktop to the bastion | `number` | `22` | no |
| public\_subnets | List of cidr ranges for public subnets | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| tags | Tags for resources | `map(string)` | `{}` | no |
| vpc\_name | The name of the VPC | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| azs | n/a |
| key\_names | ######## Bastion ######## |
| private\_route\_table\_ids | n/a |
| private\_subnets | n/a |
| private\_subnets\_cidr\_blocks | n/a |
| public\_subnet\_cidr\_blocks | n/a |
| public\_subnets | n/a |
| sg\_bastion\_private\_id | n/a |
| sg\_bastion\_public\_id | #### sgs #### |
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