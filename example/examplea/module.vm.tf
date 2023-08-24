module "vm" {
  source         = "../../"
  resource_group = azurerm_resource_group.example
  admin_password = var.admin_password
  subnet_id      = azurerm_subnet.example.id
}
