variable "project" {
  default = "samuellittley-terraform"
}

variable "credentials_file" {
  default = "service-account-key.json"
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "spanner_schema_file" {
  default = "spanner_schema.sdl"
}
