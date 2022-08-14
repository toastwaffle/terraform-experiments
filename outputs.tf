output "database_name" {
  value = "projects/${var.project}/instances/${google_spanner_instance.main.name}/databases/${google_spanner_database.database.name}"
}
