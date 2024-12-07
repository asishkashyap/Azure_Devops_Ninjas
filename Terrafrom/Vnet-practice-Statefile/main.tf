resource "azurerm_virtual_network" "vnet-block" {
  name                = "Rasmalai-vnet"
  location            = "Central India"
  resource_group_name = "ShahiRasmalai"
  address_space       = ["10.0.0.0/16"]


  subnet {
    name           = "malai1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "malai2"
    address_prefix = "10.0.2.0/24"
  }


}




resource "azurerm_virtual_network" "vnet-block1" {
  name                = "Rasmalai-vnet1"
  location            = "Central India"
  resource_group_name = "ShahiRasmalai"
  address_space       = ["10.0.0.0/16"]


  subnet {
    name           = "malai12"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "malai21"
    address_prefix = "10.0.2.0/24"
  }


}

































