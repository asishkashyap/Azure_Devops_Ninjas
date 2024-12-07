terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.117.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ShahiRasmalai"
    storage_account_name = "terraformtfstatebk"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}