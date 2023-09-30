resource "azurerm_key_vault" "keyvault" {
  name                        = "${name}"
  location                    = "${location}"
  resource_group_name         = "${resource_group_name}"
  tenant_id                   = "${tenant_id}"
  soft_delete_retention_days  = ${soft_delete_retention_days}
  sku_name                    = "${sku_name}"

  access_policy {
    tenant_id = "${tenant_id}"
    object_id = "${object_id}"

    key_permissions = [
      "${key_permissions}",
    ]

    secret_permissions = [
      "${secret_permissions}",
    ]
  }
}
