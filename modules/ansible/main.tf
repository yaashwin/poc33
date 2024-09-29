# modules/ansible/main.tf

variable "public_ip" {
  description = "Public IP of the EC2 instance"
  type        = string
}

variable "key_path" {
  description = "Path to the SSH private key"
  type        = string
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/inventory.ini"
  content  = <<-EOF
  [POC_IN]
  ${var.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=${var.key_path}
  EOF
}

resource "null_resource" "execute_ansible_playbook" {
  provisioner "local-exec" {
    command = "ansible-playbook -i ${local_file.ansible_inventory.filename} /home/yaashwin/terra-ansi/callingFunction.yml"
  }
}
