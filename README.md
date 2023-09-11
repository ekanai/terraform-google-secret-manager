# terraform-google-secret-manager

This module create google secret manager and iam members.

## Example

```terraform
module "secrets" {
  source = "./modules/google-secret-manager"

  for_each = {
    project-id     = "project id"
    project-number = "project number"
  }

  name       = "name"
  project_id = "project id"
  data       = "secret value"

  members = [
    "serviceAccount:sa@example.com",
    "user:user@example.com"
  ]
}
```
