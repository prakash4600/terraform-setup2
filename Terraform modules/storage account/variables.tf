variable "resource_group_name" {
  description = "The name of the Azure resource group where resources will be created."
  type        = string
}

variable "location" {
    type = string
    description = "Azure region where the resource group will be created."
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