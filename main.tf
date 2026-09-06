resource "azurerm_resource_group" "rg" {

  for_each = var.five

  name        = each.value.name
  location    = each.value.location
  managed_by  = each.value.managed_by
}

resource "azurerm_storage_account" "fien"{
for_each = var.hero
name = each.value.name
location = each.value.location
account_tier = each.value.account_tier
account_replication_type = each.value.account_replication_type
resource_group_name = each.value.resource_group_name
}



resource "azurerm_resource_group" "finesd" {
for_each = var.mix
name = each.value.name
location = each.value.location
}

resource "azurerm_storage_account" "mic"{
for_each = var.nice
resource_group_name = azurerm_resource_group.finesd[each.key].name
name = each.value.name
location = each.value.location
account_tier = each.value.account_tier
account_replication_type = each.value.account_replication_type



}