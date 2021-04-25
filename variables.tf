variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}


variable "admin_password" {
  type      = string
  sensitive = true
}

variable "resource_group" {}

variable "network_interface" {}
