output "cognito_identity_providers_id" {
  description = "Map of id values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_identity_providers_attribute_mapping" {
  description = "Map of attribute_mapping values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.attribute_mapping if v.attribute_mapping != null && length(v.attribute_mapping) > 0 }
}
output "cognito_identity_providers_idp_identifiers" {
  description = "Map of idp_identifiers values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.idp_identifiers if v.idp_identifiers != null && length(v.idp_identifiers) > 0 }
}
output "cognito_identity_providers_provider_details" {
  description = "Map of provider_details values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.provider_details if v.provider_details != null && length(v.provider_details) > 0 }
}
output "cognito_identity_providers_provider_name" {
  description = "Map of provider_name values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.provider_name if v.provider_name != null && length(v.provider_name) > 0 }
}
output "cognito_identity_providers_provider_type" {
  description = "Map of provider_type values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.provider_type if v.provider_type != null && length(v.provider_type) > 0 }
}
output "cognito_identity_providers_region" {
  description = "Map of region values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_identity_providers_user_pool_id" {
  description = "Map of user_pool_id values across all cognito_identity_providers, keyed the same as var.cognito_identity_providers"
  value       = { for k, v in aws_cognito_identity_provider.cognito_identity_providers : k => v.user_pool_id if v.user_pool_id != null && length(v.user_pool_id) > 0 }
}

