module "vm" {
  source            = "../../"
  common_tags       = var.common_tags
  resource_group    = azurerm_resource_group.example
  network_interface = azurerm_network_interface.example
  admin_password    = var.admin_password
}
