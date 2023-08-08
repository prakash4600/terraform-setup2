terraform {
  backend "azurerm" {
    resource_group_name  = "Retail_SaaS_Dev"
    storage_account_name = "retailsaasdeva601"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}