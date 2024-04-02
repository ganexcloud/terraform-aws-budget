module "budget_monthly_cost_forecast" {
  source            = "../"
  name              = "Monthly Costs Forecast"
  budget_type       = "COST"
  limit_amount      = "1200.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2021-01-21_00:00"
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
    use_amortized              = true
    use_blended                = false
  }
  notifications = [
    {
      comparison_operator        = "GREATER_THAN"
      threshold                  = 1200
      threshold_type             = "ABSOLUTE_VALUE"
      notification_type          = "FORECASTED"
      subscriber_email_addresses = ["test@email.com"]
    }
  ]
}
