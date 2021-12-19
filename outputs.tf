output "vm" {
  value     = azurerm_windows_virtual_machine.example
  sensitive = true
}
