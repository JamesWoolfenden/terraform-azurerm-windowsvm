variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "admin_password" {
  sensitive = true
  type      = string
}
