output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "EC2 instance public IP"
  value       = aws_instance.app_server.public_ip
}

output "instance_public_dns" {
  description = "EC2 instance public DNS"
  value       = aws_instance.app_server.public_dns
}

output "private_key_path" {
  description = "Path to private key file"
  value       = local_file.private_key.filename
}

output "ssh_command" {
  description = "SSH command to connect"
  value       = "ssh -i ${local_file.private_key.filename} ubuntu@${aws_instance.app_server.public_ip}"
}
