variable "sg_name" {
  type        = string
  default     = "default_sg"
  description = "Security group name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to attach the security group to"
}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = string
  }))
  default = []
}

variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = string
  }))
  default = []
}