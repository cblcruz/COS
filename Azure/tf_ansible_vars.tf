resource "local_file" "tf_ansible_vars_file_new" {
  content  = <<-DOC
    # Ansible vars_file containing variable values from Terraform.
    # Generated by Terraform mgmt configuration.

    tf_leader_ip: ${azurerm_linux_virtual_machine.leader.public_ip_address}
    tf_workers_count: ${var.workers_count} 
    tf_satellite_privete_ip : ${var.satellite_privete_ip}
    tf_cribl_pass: ${var.cribl_pass}
    tf_splunk_user: ${var.splunk_user}
    tf_splunk_passwd: ${var.splunk_passwd}
    tf_elastic_user: ${var.elastic_user}
    tf_elastic_passwd: ${var.elastic_passwd}
    DOC
  filename = "ansible/tf_ansible_vars_file.yml"
}