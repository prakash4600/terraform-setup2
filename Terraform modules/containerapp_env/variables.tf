variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the function app."
}

variable "location" {
  type        = string
  description = "The location/region where the function app will be created."
}

variable "appenv_name" {
  type        = string
  description = "The location/region where the function app will be created."
}

variable "vnet2_name" {
  description = "The name of the second virtual network."
  type        = string
 
}

variable "vnet2_subnet4" {
  description = "The name of the fourth subnet in vnet2."
  type        = string
  
}

variable "logwsa_analytics" {
  description = "The name of the fourth subnet in vnet2."
  type        = string
  
}

variable "dashboard1" {
  type = string
}

variable "dashboard_image" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "key_vaultname" {
    type = string  
}