terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mydemorg" {
  name     =  var.resource_group_name
  location =  var.location
}

module "keyvault" {
  source                    =  "./modules/keyvault"
  keyvault_name             =  var.keyvault_name
  location                  =  var.location
  resource_group_name       =  var.resource_group_name
  tenant_id                 =  var.tenant_id
  sku_keyvault              =  var.sku_keyvault
  purge_protection_enabled  =  var.purge_protection_enabled
  object_id                 =  var.object_id
  retention_period          =  var.retention_period
}
