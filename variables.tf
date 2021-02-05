variable "org_name" {
  description = "The name of the company the integration is for. Must be alphanumeric."
  type        = string
}

variable "account_alias" {
  description = "The alias of the account the CF is deployed in. This will be prepended to all the resources in the stack. Default is {org_name}-bc"
  type        = string
  default     = ""
}

variable "aws_profile" {
  type        = string
  description = "The profile that was used to deploy this module. If the default profile / default credentials are used, seet this value to null."
}

variable "api_token" {
  type        = string
  description = "This is your Bridgecrew platform Api token Set as and Environment variable TF_VAR_api_token"
}

variable "template_version" {
  type        = string
  default     = "1.5"
  description = "Version of this platform template"
}

variable "common_tags" {
  type        = map(any)
  description = "Implements the common tags scheme"
  default = {
    "module"      = "terraform-aws-bridgecrew-read-only"
    "integration" = "bridgecrew-aws-readonly"
  }
}


variable "topic_name" {
  type    = string
  default = "handle-customer-actions"
}


variable "bridgecrew_account_id" {
  type    = string
  default = "890234264427"
}
