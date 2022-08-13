terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.31.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_spanner_instance" "main" {
  config           = "regional-${var.region}"
  display_name     = "main"
  processing_units = 100
  force_destroy    = true
}

resource "google_spanner_database" "database" {
  instance            = google_spanner_instance.main.name
  name                = "database"
  deletion_protection = false
  ddl = [
    for s in split(";", file(var.spanner_schema_file)) :
    trimspace(s) if trimspace(s) != ""
  ]
}
