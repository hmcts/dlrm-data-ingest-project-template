terraform {
  required_version = "1.11.1"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.117.1"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}