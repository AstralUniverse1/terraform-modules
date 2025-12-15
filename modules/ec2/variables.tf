variable "instance_type" {}

variable "ami_id" {}

variable "sg_ids" {
  type = list(string)
}


variable "key_name" {
  type    = string
  default = null
}

variable "subnet_id" {
  type = string
}


