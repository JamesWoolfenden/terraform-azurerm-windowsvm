

resource "azurerm_windows_virtual_machine" "example" {
  name                       = "example-machine"
  resource_group_name        = var.resource_group.name
  location                   = var.resource_group.location
  size                       = "Standard_F2"
  admin_username             = "adminuser"
  admin_password             = var.admin_password
  allow_extension_operations = false
  network_interface_ids = [
    var.network_interface.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
