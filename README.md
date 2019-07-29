# terraform-module-azurerm-resource-group
Terraform module that can be used to create an Azure Resource Group.

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| enabled | Enable or not the module. | bool | `"true"` | no |
| location | Location of the resource group. | string | n/a | yes |
| name | Name of the resource group. | string | n/a | yes |
| tags | Tags to add to the resource group. | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id |  |
| name |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inspec
This module ships with an inspec profile. You can rely on this profile to test this module.

### Attributes

See inspec.yaml
