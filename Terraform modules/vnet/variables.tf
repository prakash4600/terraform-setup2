variable "resource_group_name" {
  description = "The name of the Azure resource group where resources will be created."
  type        = string
  
}

variable "location" {
    type = string
    description = "Azure region where the resource group will be created.  "
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
