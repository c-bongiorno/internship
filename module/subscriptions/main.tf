data "azurerm_billing_enrollment_account_scope" "billing_enrollment_account" {
  for_each = var.billing_enrollment_account_scope

  billing_account_name    = each.value.billing_account_name
  enrollment_account_name = each.value.enrollment_account_name
}

resource "azurerm_subscription" "subscription" {
  for_each = var.subscriptions

  subscription_name = each.value.subscription_name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.billing_enrollment_account.id

}
