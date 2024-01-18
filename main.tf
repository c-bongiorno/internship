module "subscription" {
  
source = "./module/subscriptions"

subscriptions = var.subscriptions
billing_enrollment_account_scope = var.billing_enrollment_account_scope


}