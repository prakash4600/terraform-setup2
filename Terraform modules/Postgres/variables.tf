variable "location" {
  description = "Azure region for the resources."
  default     = "West US"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group."
  default     = "example-resource-group"
}

variable "postgreserver" {
  description = "Name of the Azure PostgreSQL Server."
  default     = "postgresql-server-1"
}

variable "postgredb" {
  description = "Name of the Azure PostgreSQL Database."
  default     = "exampledb"
}