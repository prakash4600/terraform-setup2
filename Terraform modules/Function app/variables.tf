variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the function app."
}

variable "location" {
  type        = string
  description = "The location/region where the function app will be created."
}

variable "function_app_name" {
  type        = string
  description = "The name of the function app."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account to use for the function app."
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the app service plan to use for the function app."
}

variable "vnet2_name" {
  type        = string
  description = "The name of the virtual network to use for VNet integration."
}

variable "vnet2_subnet1" {
  description = "The name of the first subnet in vnet2."
  type        = string
}