terraform {
  required_version = "1.11.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.5.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}