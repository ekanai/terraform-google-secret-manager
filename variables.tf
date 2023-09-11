variable "name" {
  type        = string
  description = "Name"
}

variable "replication_automatic_enabled" {
  type        = bool
  description = "Replication automatic enabled"
  default     = true
}

variable "data" {
  type        = string
  description = "Data"
}

variable "project_id" {
  type        = string
  description = "Project id"
}

variable "members" {
  type        = list(string)
  description = "Members"
}
