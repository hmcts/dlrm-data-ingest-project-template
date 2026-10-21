terraform {
  required_version = "1.17.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}