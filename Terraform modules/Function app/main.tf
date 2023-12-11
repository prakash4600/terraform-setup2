data "azurerm_storage_account" "storage_account" {
    name = var.storage_account_name
    resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "subnet3" {
    name = var.vnet2_subnet1
    resource_group_name = var.resource_group_name
    virtual_network_name = var.vnet2_name

  
}

resource "azurerm_application_insights" "appinsights" {
  name                = var.function_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}

resource "azurerm_service_plan" "functionsplan" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Windows"
  sku_name            = "S1"
}

resource "azurerm_application_insights" "ai" {
    name                = "${var.function_app_name}-appinsights1"
    location            = var.location
    resource_group_name = var.resource_group_name
    application_type    ="web"
}
resource "azurerm_windows_function_app" "fa" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id = azurerm_service_plan.functionsplan.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = data.azurerm_storage_account.storage_account.primary_access_key
  app_settings = {
    virtual_network_subnet_id               = data.azurerm_subnet.subnet3.id
  }

  site_config {
      always_on               = true
    use_32_bit_worker         = true
                     
        // Name of the existing subnet within the VNet.

    // Configure the subnet_id only if subnet3 has different resource group.
    // If it's in the same resource group as the Function App, you can omit this.

    // Allow public access.
    // Setting this to true allows public access while still enabling VNet integration.
    // If you don't want public access at all, set this to false.
    ftps_state                = "AllAllowed"
    http2_enabled             = true
    minimum_tls_version       = "1.2"
    remote_debugging_enabled  = false
    
    
    
  }

  
  timeouts {
    create = "30m"
    delete = "30m"
  }
 
}
  

