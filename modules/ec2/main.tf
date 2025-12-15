resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
}
