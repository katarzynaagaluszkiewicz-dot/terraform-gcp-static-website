# Generate a random suffix to ensure global uniqueness of the bucket name
resource "random_id" "suffix" {
  byte_length = 3
}

# Create a Google Cloud Storage bucket to host the static website
resource "google_storage_bucket" "site" {
  name     = "my-bucket-for-project-kasia"
  location = "US"

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
}

# Make the bucket publicly readable (required for website hosting)
resource "google_storage_bucket_iam_member" "public_read" {
  bucket = google_storage_bucket.site.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

# Upload local index.html to the bucket
resource "google_storage_bucket_object" "index" {
  name         = "index.html"
  bucket       = google_storage_bucket.site.name
  source       = "${path.module}/site/index.html"
  content_type = "text/html"
  depends_on   = [google_storage_bucket_iam_member.public_read]
}
