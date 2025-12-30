resource "azurerm_resource_group" "terraform" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Create a Storage account
resource "azurerm_storage_account" "terraform_state" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "my-terraform-env"
  }
}

## Create a Storage container
resource "azurerm_storage_container" "terraform_state" {
  name                  = var.container_name
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}
