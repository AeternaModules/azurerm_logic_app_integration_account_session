output "logic_app_integration_account_sessions_id" {
  description = "Map of id values across all logic_app_integration_account_sessions, keyed the same as var.logic_app_integration_account_sessions"
  value       = { for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logic_app_integration_account_sessions_content" {
  description = "Map of content values across all logic_app_integration_account_sessions, keyed the same as var.logic_app_integration_account_sessions"
  value       = { for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : k => v.content if v.content != null && length(v.content) > 0 }
}
output "logic_app_integration_account_sessions_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_sessions, keyed the same as var.logic_app_integration_account_sessions"
  value       = { for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : k => v.integration_account_name if v.integration_account_name != null && length(v.integration_account_name) > 0 }
}
output "logic_app_integration_account_sessions_name" {
  description = "Map of name values across all logic_app_integration_account_sessions, keyed the same as var.logic_app_integration_account_sessions"
  value       = { for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logic_app_integration_account_sessions_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_sessions, keyed the same as var.logic_app_integration_account_sessions"
  value       = { for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

