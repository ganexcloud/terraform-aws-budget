module "budget_rds_ri_utilization" {
  source            = "../"
  name              = "RDS RI Utilization Report"
  budget_type       = "RI_UTILIZATION"
  limit_amount      = "100.0"
  limit_unit        = "PERCENTAGE"
  time_period_start = "2021-01-21_00:00"
  time_unit         = "MONTHLY"
  cost_filters = [
    {
      name   = "Service"
      values = ["Amazon Relational Database Service"]
    }
  ]
  cost_types = {
    include_credit             = false
    include_discount           = false
    include_other_subscription = false
    include_recurring          = false
    include_refund             = false
    include_subscription       = true
    include_support            = false
    include_tax                = false
    include_upfront            = false
    use_blended                = false
  }
  notifications = [
    {
      comparison_operator        = "LESS_THAN"
      threshold                  = 100
      threshold_type             = "PERCENTAGE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = ["test@email.com"]
    }
  ]
}

module "budget_rds_ri_coverage" {
  source            = "../"
  name              = "RDS RI Coverage Report"
  budget_type       = "RI_COVERAGE"
  limit_amount      = "100.0"
  limit_unit        = "PERCENTAGE"
  time_period_start = "2021-01-21_00:00"
  time_unit         = "MONTHLY"
  cost_filters = [
    {
      name   = "Service"
      values = ["Amazon Relational Database Service"]
    }
  ]
  cost_types = {
    include_credit             = false
    include_discount           = false
    include_other_subscription = false
    include_recurring          = false
    include_refund             = false
    include_subscription       = true
    include_support            = false
    include_tax                = false
    include_upfront            = false
    use_blended                = false
  }
  notifications = [
    {
      comparison_operator        = "LESS_THAN"
      threshold                  = 100
      threshold_type             = "PERCENTAGE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = ["test@email.com"]
    }
  ]
}
