variable "environment" {
   type = string
   description = "Environment"
   default = "Staging"
}

variable "subscription_id" {
   description = "Azure subscription"
   default = "<YOUR_SUBSCRIPTION>"
}
variable "tenant_id" {
   description = "Azure Tenant ID"
   default = "<YOUR_TENANT_ID>"
}

variable "client_id" {
   description = "Azure Client ID"
   default = "<YOUR_CLIENT_ID>"
}

variable "client_secret" {
   description = "Azure Client Secret"
   default = "<YOUR_CLIENT_SECRET>"
}
