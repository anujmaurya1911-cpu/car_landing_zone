terraform {
backend "azurerm" {
resource_group_name = "sickrg"
storage_account_name = "sunstoragesingh"
container_name = "hero"
key = "tfstorage"
}
required_providers {
  azurerm = {
    source = "hashicorp/azurerm"
    version = "4.80.0"
  }
}
}
provider "azurerm" {
features {
  
}
  
}

