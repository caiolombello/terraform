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
