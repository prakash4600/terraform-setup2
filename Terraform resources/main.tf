module "RG" {
    source = "../Terraform modules/RG"
    resource_group_name =  var.resource_group_name
    location = var.location
    
}

module "vnet" {
    source = "../Terraform modules/vnet"
    resource_group_name = var.resource_group_name
    location = var.location
    vnet1_subnet1 = var.vnet1_subnet1
    vnet1_subnet2 = var.vnet1_subnet2
    vnet2_subnet1 = var.vnet2_subnet1
    vnet2_subnet2 = var.vnet2_subnet2
    vnet2_subnet3 = var.vnet2_subnet3
    vnet2_subnet4 = var.vnet2_subnet4
    vnet1_name = var.vnet1_name 
    vnet2_name = var.vnet2_name  
}
module "storage_account" {
  source = "../Terraform modules/storage account"

  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_name = var.storage_account_name
  account_tier        = var.account_tier
  account_replication_type = var.account_replication_type
  container_names     = var.container_names
}

module "function_app" {
  source = "../Terraform modules/Function app"

  resource_group_name = var.resource_group_name
  location            = var.location
  function_app_name   = var.function_app_name
  storage_account_name = var.storage_account_name
  app_service_plan_name = var.app_service_plan_name
  vnet2_name           = var.vnet2_name
  vnet2_subnet1        = var.vnet2_subnet1
  
}


module "sql_server" {
  source               = "../Terraform modules/Sql server"
  resource_group_name  = var.resource_group_name
  location             = var.location
  server_name          = var.server_name
  administrator_login  = var.administrator_login
  administrator_login_password = var.administrator_login_password
  sql_server_version = var.sql_server_version

}



module "keyvault" {
  source = "../Terraform modules/key-vault"
  key_vaultname = var.key_vaultname
  location = var.location
  resource_group_name = var.resource_group_name
  azure_tenant_id = var.azure_tenant_id
}

module "postgres" {
  source = "../Terraform modules/Postgres"
  postgreserver = var.postgreserver
  postgredb = var.postgredb
  location = var.location
  resource_group_name = var.resource_group_name
}

module "eventhub" {
  source = "../Terraform modules/Eventhub"
  resource_group_name = var.resource_group_name
  location = var.location
  event = var.event
  eventhub_namespace = var.eventhub_namespace
  
}

module "iothub" {
  source = "../Terraform modules/iothub"
  resource_group_name = var.resource_group_name
  location = var.location
  iothub_name = var.iothub_name
  
}


module "appenv" {

source = "../Terraform modules/containerapp_env"
appenv_name = var.appenv_name
resource_group_name = var.resource_group_name
location = var.location
vnet2_name = var.vnet2_name
vnet2_subnet4 = var.vnet2_subnet4
logwsa_analytics = var.logwsa_analytics
dashboard1 = var.dashboard1
dashboard_image = var.dashboard_image
acr_name = var.acr_name
key_vaultname = var.key_vaultname  
}
module "acr" {
  source = "../Terraform modules/container_registry"
  resource_group_name = var.resource_group_name
  location = var.location
  acr_name = var.acr_name
  
}