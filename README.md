# terraform-module-azurerm-resource-group
Terraform module that can be used to create an Azure Resource Group.

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
This module ships some inspec tests. You can depend on this repository for the inspec tests and load the profile.

### Attributes
| Name | Description | Default |
| ---- | ----------- | ------- |
| name_prefix | Name prefix of the resource group | `CHANGE_ME` |
| location | Location of the resource group | `CHANGE_ME` |
| enabled | Wheter the resource group module is enabled or not | `true` |
