data "azurerm_resource_group" "example" {
  name     = var.resource_group_name
}

 

resource "azurerm_key_vault" "example" {
  name                        = var.key_vaultname
  location                    = var.location
  resource_group_name         = data.azurerm_resource_group.example.name
  sku_name                    = "standard"
  tenant_id                   = "9b415834-803a-4da0-afdc-fe6b1d52d649"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true
  
  tags = {
    environment = "demo"
  }


 
}

 resource "azurerm_key_vault_secret" "acr_secret" {
  name         = "acrpassword1"
  value        = "vm90sTOCuL79U2sLbi2XY1uWG/dJvTKVaAEizAKJQF+ACRDpGifj"
  key_vault_id = azurerm_key_vault.example.id
}