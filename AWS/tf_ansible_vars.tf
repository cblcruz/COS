resource "local_file" "tf_ansible_vars_file_new" {
  content  = <<-DOC
    # Ansible vars_file containing variable values from Terraform.
    # Generated by Terraform mgmt configuration.

    tf_leader_ip: ${aws_instance.leader.public_ip}
    tf_leader_private_ip : ${aws_instance.leader.private_ip}
    tf_satellite_privete_ip : ${aws_instance.satellite.private_ip}
    tf_satellite_public_dns : ${aws_instance.satellite.public_dns}
    tf_workers_count: ${var.workers_count}
    tf_splunk_receiving_port: ${var.splunk_receiving_port}
    tf_access_key: ${var.access_key}
    tf_secret_key: ${var.secret_key}
    tf_worker_group: ${var.worker_group}
    tf_aws_s3_bucket: ${aws_s3_bucket.cribl-pov-bucket.bucket}
    tf_cribl_pass: ${var.cribl_pass}
    tf_splunk_user: ${var.splunk_user}
    tf_splunk_passwd: ${var.splunk_passwd}
    tf_elastic_user: ${var.elastic_user}
    tf_elastic_passwd: ${var.elastic_passwd}
    
    DOC
  filename = "ansible/tf_ansible_vars_file.yml"
}