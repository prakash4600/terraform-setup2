resource "azurerm_mssql_server" "sql" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  
}


resource "azurerm_mssql_database" "database" {
  name                = var.database_name
  server_id           = azurerm_mssql_server.sql.id
  collation           = var.database_collation
  sku_name            = var.database_sku
  
}



output "server_fully_qualified_domain_name" {
  value = azurerm_mssql_server.sql.fully_qualified_domain_name
}


