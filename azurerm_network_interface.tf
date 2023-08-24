resource "azurerm_network_interface" "example" {
  name                = var.vm.name
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
