variable "keyvault_name"{
  description  =  "Name of Key Vault"
  type         =  string
}

variable "location" {
  description  =  "location of key vault"
  type         =  string
}

variable "resource_group_name" {
  description  =  "resource group"
  type         =  string
}

variable "tenant_id" {
  description  =  "tenant id"
  type         =  string
}

variable "sku_keyvault" {
  description  =  "SKU for key vault"
  type         =  string
  default      =  "standard"
}

variable "purge_protection_enabled"{
  description = "Enable Purge Protection"
  type        = bool
  default     = true
}

variable "object_id"{
description = "Object ID to grant access to Key vault"
  type        = string
}

variable "retention_period"{
  description = "Between 7 to 90 days"
  type        = number
  default     = 7
}
