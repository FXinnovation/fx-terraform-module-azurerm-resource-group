variable "enabled" {
  description = "Enable or not the module."
  default     = true
  type        = bool
}

variable "name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Location of the resource group."
  type        = string
}

variable "tags" {
  description = "Tags to add to the resource group."
  default     = {}
  type        = map
}
