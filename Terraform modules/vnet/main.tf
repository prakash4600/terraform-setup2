resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1_name
  address_space       = ["10.3.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "vnet1_subnet1" {
  name                 = var.vnet1_subnet1
  address_prefixes      = ["10.3.1.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet1_name
}

resource "azurerm_subnet" "vnet1_subnet2" {
  name                 = var.vnet1_subnet2
  address_prefixes      = ["10.3.2.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet1_name
}

# VNet2
resource "azurerm_virtual_network" "vnet2" {
  name                = var.vnet2_name
  address_space       = ["10.4.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "vnet2_subnet1" {
  name                 = var.vnet2_subnet1
  address_prefixes      = ["10.4.1.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet2_name

  delegation {
    name = "delegation"
    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}


resource "azurerm_subnet" "vnet2_subnet2" {
  name                 = var.vnet2_subnet2
  address_prefixes      = ["10.4.2.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet2_name
}

resource "azurerm_subnet" "vnet2_subnet3" {
  name                 = var.vnet2_subnet3
  address_prefixes      = ["10.4.3.0/24"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet2_name
}

resource "azurerm_subnet" "vnet2_subnet4" {
  name                 = var.vnet2_subnet4
  address_prefixes      = ["10.4.4.0/23"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet2_name
}

resource "azurerm_virtual_network_peering" "peering_vnet1_to_vnet2" {
  name = "peering_vnet1_to_vnet2"
  resource_group_name = var.resource_group_name
  virtual_network_name        = azurerm_virtual_network.vnet1.name
  remote_virtual_network_id   = azurerm_virtual_network.vnet2.id
  
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}

resource "azurerm_virtual_network_peering" "peering_vnet2_to_vnet1" {
  name                         = "peering_vnet2_to_vnet1"
  resource_group_name = var.resource_group_name
  virtual_network_name        = azurerm_virtual_network.vnet2.name
  remote_virtual_network_id   = azurerm_virtual_network.vnet1.id
  
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}