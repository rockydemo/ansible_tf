resource "azurerm_key_vault" "keyvault" {
  name                       = "poc-kv"
  location                   = "eastus"
  resource_group_name        = "poc-kv-playbook"
  tenant_id                  = "7a32773c-a86e-490d-ae40-5780e4791a65"
  soft_delete_retention_days = 7
  sku_name                   = "Standard"

  access_policy {
    tenant_id = "7a32773c-a86e-490d-ae40-5780e4791a65"
    object_id = "0caa02c9-7680-49e9-8fd7-436f61144bb8"

    key_permissions = [
      "read",
    ]

    secret_permissions = [
      "read",
    ]
  }
}

resource "azurerm_key_vault" "keyvault" {
  name                       = "poc-kv-2"
  location                   = "eastus"
  resource_group_name        = "poc-kv-playbook"
  tenant_id                  = "7a32773c-a86e-490d-ae40-5780e4791a65"
  soft_delete_retention_days = 7
  sku_name                   = "Standard"

  access_policy {
    tenant_id = "7a32773c-a86e-490d-ae40-5780e4791a65"
    object_id = "0caa02c9-7680-49e9-8fd7-436f61144bb8"

    key_permissions = [
      "read",
    ]

    secret_permissions = [
      "read",
    ]
  }
}

resource "azurerm_key_vault" "keyvault" {
  name                       = "poc-kv-3"
  location                   = "eastus"
  resource_group_name        = "poc-kv-playbook"
  tenant_id                  = "7a32773c-a86e-490d-ae40-5780e4791a65"
  soft_delete_retention_days = 7
  sku_name                   = "Standard"

  access_policy {
    tenant_id = "7a32773c-a86e-490d-ae40-5780e4791a65"
    object_id = "0caa02c9-7680-49e9-8fd7-436f61144bb8"

    key_permissions = [
      "read",
    ]

    secret_permissions = [
      "read",
    ]
  }
}

