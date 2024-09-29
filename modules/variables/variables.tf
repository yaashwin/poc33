# modules/variables/variables.tf

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for launching EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "Name of the SSH keypair to access EC2 instance"
  type        = string
}

variable "ssh_private_key_path" {
  description = "Path to the SSH private key for connecting to EC2"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "allow_ssh_http_https"
}

variable "security_group_description" {
  description = "Description for the security group"
  type        = string
  default     = "Allow SSH, HTTP, HTTPS, Jenkins, and SonarQube"
}
