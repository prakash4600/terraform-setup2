terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.68.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }

  client_id = "ebac3988-a142-4e6e-9c8a-2321ef080922"
  subscription_id = "e38e4eed-8fbd-4713-b27d-0f419989008a"
  client_secret = "Sx.8Q~kdCrD536IeTaJcLXSOXAe3CVy.6n7ngaFD"
  tenant_id = "9b415834-803a-4da0-afdc-fe6b1d52d649"
}