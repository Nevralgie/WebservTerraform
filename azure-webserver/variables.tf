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

variable "instance_size" {
   type = string
   description = "Azure instance size"
   default = "Standard_F2"
}

variable "location" {
   type = string
   description = "Region"
   default = "France Central"
}

variable "environment" {
   type = string
   description = "Environment"
   default = "dev"
}

variable "azureadid" {
   type = string
   description = "Azure AD user id"
   default = "8301a7b0-d34b-4854-88c0-c445dff22d3c"
  
}
