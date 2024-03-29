

resource "azurerm_windows_virtual_machine" "example" {
  name                       = var.vm.name
  resource_group_name        = var.resource_group.name
  location                   = var.resource_group.location
  size                       = var.vm.size
  admin_username             = var.vm.admin_username
  admin_password             = var.admin_password
  allow_extension_operations = false

  network_interface_ids = [
    azurerm_network_interface.example.id
  ]

  os_disk {
    caching              = var.vm.os_disk.caching
    storage_account_type = var.vm.os_disk.storage_account_type
  }

  source_image_reference {
    publisher = var.image.publisher
    offer     = var.image.offer
    sku       = var.image.sku
    version   = var.image.version
  }
  encryption_at_host_enabled = true
}
