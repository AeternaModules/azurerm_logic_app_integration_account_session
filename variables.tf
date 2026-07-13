variable "logic_app_integration_account_sessions" {
  description = <<EOT
Map of logic_app_integration_account_sessions, attributes below
Required:
    - content
    - integration_account_name
    - name
    - resource_group_name
EOT

  type = map(object({
    content                  = string
    integration_account_name = string
    name                     = string
    resource_group_name      = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_sessions : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_sessions : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_sessions : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_sessions : (
        can(jsondecode(v.content))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

