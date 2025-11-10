#variables.tf
variable "project_id" {
  description = "GCP project id"
  type        = string
  default     = "academic-tenure-472315-v2"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name_prefix" {
  description = ""Prefix for the bucket name"
  type        = string
  default     = "static-site"
}
