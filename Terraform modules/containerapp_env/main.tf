data "azurerm_subnet" "retrieved_subnet" {
  name                 = var.vnet2_subnet4
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet2_name
}


resource "azurerm_log_analytics_workspace" "laws_ca" {
  name                = var.logwsa_analytics
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_app_environment" "appenv" {
  name                       = var.appenv_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.laws_ca.id
  infrastructure_subnet_id   = data.azurerm_subnet.retrieved_subnet.id
  internal_load_balancer_enabled = false
}



resource "azurerm_container_app" "dashboard" {
  name                         = var.dashboard1
  container_app_environment_id = azurerm_container_app_environment.appenv.id
  resource_group_name          = var.resource_group_name
  revision_mode                = "Single"
  

   

  template {
    container {
      name   = "examplecontainerapp"
      image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
      cpu    = 0.25
      memory = "0.5Gi"
     
    }
  
  }
}










