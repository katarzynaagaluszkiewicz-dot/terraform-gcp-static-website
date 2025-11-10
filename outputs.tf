# outputs.tf
output "bucket_name" {
  description = "The name of the created bucket"
  value       = google_storage_bucket.site.name
}

output "website_url" {
  description = "Public URL of the static website's index.html"
  value       = "https://storage.googleapis.com/${google_storage_bucket.site.name}/index.html"
}
