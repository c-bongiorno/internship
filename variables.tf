variable "subscriptions" {
  type = map(object({
    subscription_name = string
    billing_scope_id  = string
  }))
}

variable "billing_enrollment_account_scope" {
  type = object({
    billing_account_name    = string
    enrollment_account_name = string
  })

}
