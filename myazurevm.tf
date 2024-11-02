resource "azurerm_linux_virtual_machine" "vm" {
  name                  = "Week1VM"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_B1s"
  admin_username        = "azureuser"
  admin_password      = "Password1234!"
  network_interface_ids = [azurerm_network_interface.main.id]
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  

}
