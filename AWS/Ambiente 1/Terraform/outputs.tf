# postgres-dependent output

output "postgres-dependent-ip" {
  description = "Public IP Address of the postgres-dependent EC2 instance"
  value       = aws_instance.postgres-dependent.public_ip
}

output "psql-dependent-ssh-name" {
  description = "postgres-dependent ssh name key"
 value       = aws_instance.postgres-dependent.key_name
}

output "private_key" {
  description = "Generated private key"
  value       = tls_private_key.tls-key.private_key_pem
  sensitive   = true
}

output "public_key" {
  description = "Generated private key"
  value       = tls_private_key.tls-key.public_key_openssh
  sensitive   = true
}

# postgresql outputs

output "database_cluster_id" {
  description = "The id of the database cluster"
  value       = aws_db_instance.postgresql.id
}

output "database_port" {
  description = "Network port that the database is listening on"
  value       = aws_db_instance.postgresql.port
}

output "database_username" {
  description = "Username for default user"
  value       = aws_db_instance.postgresql.username
}

output "database_cluster_password" {
  description = "Password for default user"
  value       = aws_db_instance.postgresql.password
  sensitive   = true
}
