# modules/outputs/outputs.tf

output "instance_public_ip" {
  description = "Public IP address of the created EC2 instance"
  value       = module.ec2_instance.instance_public_ip
}

output "security_group_id" {
  description = "ID of the created security group"
  value       = module.security_group.security_group_id
}

output "ansible_inventory_path" {
  description = "The path to the generated Ansible inventory file"
  value       = module.ansible.ansible_inventory.filename
}
