module "vm" {
  source            = "../../"
  resource_group    = azurerm_resource_group.example
  network_interface = azurerm_network_interface.example
  admin_password    = var.admin_password
}
