###Provider####

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.117.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

##################################################################


resource "azurerm_resource_group" "rg_block" {
  name     = "HCL-rg"
  location = "West Europe"
}


resource "azurerm_virtual_network" "vnet" {
  name                = "hcl-uidai-prod-vnet"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name
  address_space       = ["10.0.0.0/16"] #for list

  subnet {
    name           = "hcl-uidai-prod-subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "hcl-uidai-prod-subnet2"
    address_prefix = "10.0.2.0/24"

  }

  tags = {
    Managed_by = "YOGI"
  }
}