resource "azurerm_resource_group" "this" {
  count    = var.enabled ? 1 : 0
  name     = var.name
  location = var.location
  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}
