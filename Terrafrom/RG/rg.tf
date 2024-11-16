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

###Resource Code###


resource "azurerm_resource_group" "rg_block" {
  name     = "ShahiRasmalai"
  location = "Central India"
  tags = {
    name = "Managed by"
    value = "Ashish"
  }
}
