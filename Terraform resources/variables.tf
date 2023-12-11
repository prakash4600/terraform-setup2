variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

# Variables for the first virtual network (vnet1)
variable "vnet1_name" {
  description = "The name of the first virtual network."
  type        = string
}


variable "vnet1_subnet1" {
  description = "The name of the first subnet in vnet1."
  type        = string
}

variable "vnet1_subnet2" {
  description = "The name of the second subnet in vnet1."
  type        = string
}


# Variables for the second virtual network (vnet2)
variable "vnet2_name" {
  description = "The name of the second virtual network."
  type        = string
 
}

variable "vnet2_subnet1" {
  description = "The name of the first subnet in vnet2."
  type        = string
  
}

variable "vnet2_subnet2" {
  description = "The name of the second subnet in vnet2."
  type        = string
  
}


variable "vnet2_subnet3" {
  description = "The name of the third subnet in vnet2."
  type        = string
  
}


variable "vnet2_subnet4" {
  description = "The name of the fourth subnet in vnet2."
  type        = string
 
}
variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "account_tier" {
  type        = string
  description = "The performance tier of the storage account."
}

variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account."
}

variable "container_names" {
  type        = list(string)
  description = "A list of names for the containers to be created within the storage account."
}

variable "function_app_name" {
  type        = string
  description = "The name of the function app."
}



variable "app_service_plan_name" {
  type        = string
  description = "The name of the app service plan to use for the function app."
}

variable "key_vaultname" {
    type = string
}

variable "azure_tenant_id" {
  type = string
}

variable "azure_object_id" {
  type = string
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

variable "postgreserver" {
  description = "Name of the Azure PostgreSQL Server."
  default     = "postgresql-server-1"
}

variable "postgredb" {
  description = "Name of the Azure PostgreSQL Database."
  default     = "exampledb"
}

variable "eventhub_namespace" {
  type        = string
}


variable "event" {
  type        = string
}
variable "iothub_name" {
  type = string
}

variable "appenv_name" {
  type        = string
  description = "The location/region where the function app will be created."
}

variable "logwsa_analytics" {
  description = "The name of the fourth subnet in vnet2."
  type        = string
  
}
variable "acr_name" {
  type = string
}

variable "dashboard1" {
  type = string  
}

variable "dashboard_image" {
  type = string
}