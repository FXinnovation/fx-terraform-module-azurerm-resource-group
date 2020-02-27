output "name" {
  description = "Name of the provisioned resource group."
  value = element(
    concat(
      azurerm_resource_group.this.*.name,
      list("")
    ),
    0
  )
}

output "id" {
  description = "Resource ID of the provisioned resource group."
  value = element(
    concat(
      azurerm_resource_group.this.*.id,
      list("")
    ),
    0
  )
}

output "location" {
  description = "Location of the provisioned resource group."
  value = element(
    concat(
      var.location,
      list("")
    ),
    0
  )
}
