###
# Resource group
###
module "resource_group" {
  source = "../../"

  name     = "tftest-rg"
  location = "canadacentral"
}
