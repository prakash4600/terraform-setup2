variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the function app."
}

variable "location" {
  type        = string
  description = "The location/region where the function app will be created."
}

variable "eventhub_namespace" {
  type        = string
}


variable "event" {
  type        = string
}