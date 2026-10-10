variable "cognito_identity_providers" {
  description = <<EOT
Map of cognito_identity_providers, attributes below
Required:
    - provider_details
    - provider_name
    - provider_type
    - user_pool_id
Optional:
    - attribute_mapping
    - idp_identifiers
    - region
EOT

  type = map(object({
    provider_details  = map(string)
    provider_name     = string
    provider_type     = string
    user_pool_id      = string
    attribute_mapping = optional(map(string))
    idp_identifiers   = optional(list(string))
    region            = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_providers : (
        v.idp_identifiers == null || (alltrue([for x in v.idp_identifiers : (length(x) >= 1 && length(x) <= 40) && (can(regex("^[\\w\\s+=.@-]+$", x)))]))
      )
    ])
    error_message = "all of: must be between 1 and 40 characters; see https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#API_CreateIdentityProvider_RequestSyntax"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

