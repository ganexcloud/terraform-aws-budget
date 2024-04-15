resource "aws_budgets_budget" "this" {
  name              = var.name
  budget_type       = var.budget_type
  limit_amount      = var.limit_amount
  limit_unit        = var.limit_unit
  time_period_start = var.time_period_start
  time_period_end   = var.time_period_end
  time_unit         = var.time_unit

  dynamic "cost_types" {
    for_each = length(keys(var.cost_types)) == 0 ? [] : [var.cost_types]

    content {
      include_credit             = lookup(cost_types.value, "include_credit", true)
      include_discount           = lookup(cost_types.value, "include_discount", true)
      include_other_subscription = lookup(cost_types.value, "include_other_subscription", true)
      include_recurring          = lookup(cost_types.value, "include_recurring", true)
      include_refund             = lookup(cost_types.value, "include_refund", true)
      include_subscription       = lookup(cost_types.value, "include_subscription", true)
      include_support            = lookup(cost_types.value, "include_support", true)
      include_tax                = lookup(cost_types.value, "include_tax", true)
      include_upfront            = lookup(cost_types.value, "include_upfront", true)
      use_amortized              = lookup(cost_types.value, "use_amortized", false)
      use_blended                = lookup(cost_types.value, "use_blended", false)
    }
  }

  dynamic "cost_filter" {
    for_each = toset(var.cost_filters)
    content {
      name   = cost_filter.value.name
      values = cost_filter.value.values
    }
  }

  dynamic "notification" {
    for_each = length(var.notifications) == 0 ? [] : var.notifications

    content {
      comparison_operator        = lookup(notification.value, "comparison_operator")
      threshold                  = lookup(notification.value, "threshold")
      threshold_type             = lookup(notification.value, "threshold_type")
      notification_type          = lookup(notification.value, "notification_type", null)
      subscriber_email_addresses = lookup(notification.value, "subscriber_email_addresses", null)
    }
  }
}
