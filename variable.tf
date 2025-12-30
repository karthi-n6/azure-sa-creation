variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group"
}

variable "resource_group_name" {
  default     = "terraform"
  description = "resource group name for all resource"
}

# Input variable: Name of Storage Account
variable "storage_account_name" {
  description = "The name of the storage account. Must be globally unique, length between 3 and 24 characters and contain numbers and lowercase letters only."
  default     = "terraform160887"
}

# Input variable: Name of Storage container
variable "container_name" {
  description = "The name of the Blob Storage container."
  default     = "tfstate"
}
variable "subscription_id" {
  type = string
  description = "Azure subscription id to provision infra."
    }
        
variable "tenant_id" {
  type = string
  description = "Azure subscription tenant id"
    }
    
variable "client_id" {
  type = string
  description = "App id to authenticate to azure."
    }
    
variable "client_secret" {
  type = string
  description = "App password to authenticate to azure"
    }
