output "logic_app_integration_account_sessions" {
  description = "All logic_app_integration_account_session resources"
  value       = azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions
}
output "logic_app_integration_account_sessions_content" {
  description = "List of content values across all logic_app_integration_account_sessions"
  value       = [for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : v.content]
}
output "logic_app_integration_account_sessions_integration_account_name" {
  description = "List of integration_account_name values across all logic_app_integration_account_sessions"
  value       = [for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : v.integration_account_name]
}
output "logic_app_integration_account_sessions_name" {
  description = "List of name values across all logic_app_integration_account_sessions"
  value       = [for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : v.name]
}
output "logic_app_integration_account_sessions_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_integration_account_sessions"
  value       = [for k, v in azurerm_logic_app_integration_account_session.logic_app_integration_account_sessions : v.resource_group_name]
}

