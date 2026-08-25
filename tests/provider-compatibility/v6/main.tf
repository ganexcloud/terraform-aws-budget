module "budget" {
  source = "../../../"

  name              = "provider-compatibility-v6"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_period_start = "2021-01-01_00:00"
  time_unit         = "MONTHLY"

  cost_filters = [
    {
      name   = "Service"
      values = ["Amazon Elastic Compute Cloud - Compute"]
    }
  ]

  cost_types = {
    include_credit             = true
    include_discount           = true
    include_other_subscription = true
    include_recurring          = true
    include_refund             = true
    include_subscription       = true
    include_support            = true
    include_tax                = true
    include_upfront            = true
    use_amortized              = false
    use_blended                = false
  }

  notifications = [
    {
      comparison_operator        = "GREATER_THAN"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = ["terraform@example.com"]
      threshold                  = 80
      threshold_type             = "PERCENTAGE"
    }
  ]
}
