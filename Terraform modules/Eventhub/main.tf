resource "azurerm_eventhub_namespace" "eh" {
  name                = var.eventhub_namespace
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    environment = "demo"
  }
}

resource "azurerm_eventhub" "example" {
  name                = var.event
  namespace_name      = azurerm_eventhub_namespace.eh.name
  resource_group_name = var.resource_group_name
  partition_count     = 5
  message_retention   = 1
}