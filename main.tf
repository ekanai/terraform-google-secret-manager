resource "google_secret_manager_secret" "this" {
  secret_id = var.name
  replication {
    automatic = var.replication_automatic_enabled
  }
}

resource "google_secret_manager_secret_version" "this" {
  secret      = google_secret_manager_secret.this.name
  secret_data = var.data
}

resource "google_secret_manager_secret_iam_member" "this" {
  for_each = { for m in var.members : sha256(m) => m }

  project   = var.project_id
  secret_id = google_secret_manager_secret.this.secret_id
  role      = "roles/secretmanager.secretAccessor"
  member    = each.value
}
