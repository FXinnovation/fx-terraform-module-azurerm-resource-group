###
# Resource group
###
module "resource_group" {
  source = "../../"

  enabled  = false
  name     = "tftest-rg"
  location = "canadacentral"
}
