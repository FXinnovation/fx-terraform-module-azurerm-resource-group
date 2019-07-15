output "name" {
  value = element(
    concat(
      azurerm_resource_group.this.*.name,
      list("")
    ),
    0
  )
}

output "id" {
  value = element(
    concat(
      azurerm_resource_group.this.*.id,
      list("")
    ),
    0
  )
}
