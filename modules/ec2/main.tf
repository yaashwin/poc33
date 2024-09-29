# modules/ec2/main.tf

variable "ami" {
  description = "AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type to use for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to associate with the instance"
  type        = string
}

resource "aws_instance" "this" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [var.security_group_id]

  tags = {
    Name = "POC_INSTANCE"
  }
}

output "instance_public_ip" {
  value = aws_instance.this.public_ip
}
