resource "azurerm_key_vault" "example" {
  name                        = var.keyvault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = var.retention_period
  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.sku_keyvault

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = [
      "Get",
      "Set"
    ]

    secret_permissions = [
      "Get",
      "Set"
    ]

    storage_permissions = [
      "Get",
      "Set"
    ]
  }
}
