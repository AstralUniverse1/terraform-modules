variable "user_name" {
  type = string
}
variable "policy_arns" {
  type    = list(string)
  default = []
}

