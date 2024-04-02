variable "name" {
  description = "(Optional) The name of a budget. Unique within accounts."
  type        = string
}

variable "budget_type" {
  description = "(Required) Whether this budget tracks monetary cost or usage."
  type        = string
}

variable "cost_filters" {
  description = "(Optional) Budget service cost filter, eg: Amazon Elastic Compute Cloud - Compute / Amazon Relational Database Service / Amazon Redshift / Amazon ElastiCache/ Amazon Elasticsearch Service."
  type        = list(any)
  default     = []
}

variable "cost_types" {
  description = "(Optional) Object containing Cost Types The types of cost included in a budget, such as tax and subscriptions.."
  type        = any
  default     = {}
}

variable "limit_amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  type        = string
}

variable "limit_unit" {
  description = "(Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB"
  type        = string
}

variable "time_period_end" {
  description = "(Optional) The end of the time period covered by the budget. There are no restrictions on the end date. Format: 2017-01-01_12:00"
  type        = string
  default     = null
}

variable "time_period_start" {
  description = "(Required) The start of the time period covered by the budget. The start date must come before the end date. Format: 2017-01-01_12:00"
  type        = string
  default     = null
}

variable "time_unit" {
  description = "(Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, and DAILY."
  type        = string
  default     = null
}

variable "notifications" {
  description = "(Optional) Object containing Budget Notifications. Can be used multiple times to define more than one budget notification"
  type        = list(any)
  default     = []
}
