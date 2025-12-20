variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0b7546e839d7ace12"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "iam_user_name" {
  type    = string
  default = "example-user"
}
variable "iam_user_policy_arns" {
  type    = list(string)
  default = []
}

variable "sg_name" {
  type    = string
  default = "default_sg"
}

variable "ssh_cidr" {
  description = "Allowed SSH CIDR blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = string
  }))
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = var.ssh_cidr 
      description = "SSH"
    }
  ]
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

variable "key_name" {
  type    = string
  default = null
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}
variable "az" {
  type    = string
  default = "ap-northeast-1a"
}
