<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_budgets_budget.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget_type"></a> [budget\_type](#input\_budget\_type) | (Required) Whether this budget tracks monetary cost or usage. | `string` | n/a | yes |
| <a name="input_cost_filters"></a> [cost\_filters](#input\_cost\_filters) | (Optional) Budget service cost filter, eg: Amazon Elastic Compute Cloud - Compute / Amazon Relational Database Service / Amazon Redshift / Amazon ElastiCache/ Amazon Elasticsearch Service. | `list(any)` | `[]` | no |
| <a name="input_cost_types"></a> [cost\_types](#input\_cost\_types) | (Optional) Object containing Cost Types The types of cost included in a budget, such as tax and subscriptions.. | `any` | `{}` | no |
| <a name="input_limit_amount"></a> [limit\_amount](#input\_limit\_amount) | (Required) The amount of cost or usage being measured for a budget. | `string` | n/a | yes |
| <a name="input_limit_unit"></a> [limit\_unit](#input\_limit\_unit) | (Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name of a budget. Unique within accounts. | `string` | n/a | yes |
| <a name="input_notifications"></a> [notifications](#input\_notifications) | (Optional) Object containing Budget Notifications. Can be used multiple times to define more than one budget notification | `list(any)` | `[]` | no |
| <a name="input_time_period_end"></a> [time\_period\_end](#input\_time\_period\_end) | (Optional) The end of the time period covered by the budget. There are no restrictions on the end date. Format: 2017-01-01\_12:00 | `string` | `null` | no |
| <a name="input_time_period_start"></a> [time\_period\_start](#input\_time\_period\_start) | (Required) The start of the time period covered by the budget. The start date must come before the end date. Format: 2017-01-01\_12:00 | `string` | `null` | no |
| <a name="input_time_unit"></a> [time\_unit](#input\_time\_unit) | (Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, and DAILY. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->