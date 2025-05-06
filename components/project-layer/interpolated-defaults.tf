data "azurerm_resource_group" "this" {
  for_each = { for rg in local.flattened_resource_groups : rg.name => rg }
  name     = each.value
}
