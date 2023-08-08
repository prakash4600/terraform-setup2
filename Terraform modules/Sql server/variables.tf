variable "resource_group_name" {
  description = "Name of the resource group where the SQL Server and Database will be created."
}

variable "location" {
  description = "Azure region where the SQL Server and Database will be created."
}

variable "server_name" {
  description = "Name of the SQL Server."
}

variable "administrator_login" {
  description = "Administrator login for the SQL Server."
}

variable "administrator_login_password" {
  description = "Password for the SQL Server administrator login."
}

variable "sql_server_version" {
  description = "Version of the SQL Server. E.g., 12.0 (SQL Server 2014), 13.0 (SQL Server 2016), 14.0 (SQL Server 2017), etc."
}

variable "database_name" {
  default = "MyDatabase"
}

variable "database_collation" {
  default = "SQL_Latin1_General_CP1_CI_AS"
}

variable "database_sku" {
  default = "Basic"
}

variable "database_auto_pause_delay" {
  default = 60
}

variable "database_zone_redundant" {
  default = false
}