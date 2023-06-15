variable "subscription_id" {
   description = "Azure subscription"
   default = "393e3de3-0900-4b72-8f1b-fb3b1d6b97f1"
}

variable "client_id" {
   description = "Azure Client ID"
   default = "1244ff47-5233-442c-b8df-b761e220bc23"
}

variable "client_secret" {
   description = "Azure Client Secret"
   default = "YtY8Q~Q6kLoKDGGGEn3lGlILr--HZ5EsbJwOGba-"
}

variable "tenant_id" {
   description = "Azure Tenant ID"
   default = "7349d3b2-951f-41be-877e-d8ccd9f3e73c"
}

variable "instance_size" {
   type = string
   description = "Azure instance size"
   default = "Standard_F2"
}

#variable "location" {
   #type = string
   #description = "Region"
   #default = "France Central"
#}

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
