resource "azurerm_postgresql_server" "postgreserver" {
  name                = var.postgreserver
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladmin"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "11"
  ssl_enforcement_enabled      = true
}

resource "azurerm_postgresql_database" "pdb" {
  name                = var.postgredb
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgreserver.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}