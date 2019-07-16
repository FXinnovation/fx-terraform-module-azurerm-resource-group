###
# Random Name
###
resource "random_string" "default" {
  length  = 5
  upper   = false
  special = false
}

###
# Resource group
###
module "resource_group" {
  source = "../../"

  enabled  = false
  name     = "inspecarmrg${random_string.default.result}"
  location = "canadacentral"
}
