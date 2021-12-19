

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "resource_group" {}

variable "network_interface" {}


variable "image" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}


variable "vm" {
  type = object({
    name           = string
    size           = string
    admin_username = string
    os_disk = object({
      caching              = string
      storage_account_type = string
    })
  })
  default = {
    admin_username = "adminuser"
    name           = "myfirstwinvm"
    size           = "Standard_F2"
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
  }
}
