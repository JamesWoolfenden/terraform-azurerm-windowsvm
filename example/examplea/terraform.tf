terraform {
  required_providers {
    azurerm = {
      version = "2.59.0"
      source  = "hashicorp/azurerm"
    }
  }
  
  backend "remote" {
    organization = "wolf"

    workspaces {
      name = "azurerm-windowsvm"
    }
  }
  required_version = ">=0.14.8"
}
