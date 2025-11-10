# Terraform – GCP Static Website (GCS)
Project: Terraform – GCP Static Website 'Cloud Storage'
This is a example of deploying a static website to Google Cloud Storage using Terraform as Infrastructure as Code (IaC).  

## What this project demonstrates
- Terraform folder structure and modular code layout
- GCP provider configuration
- Creating a storage bucket for static website hosting
- Uploading an `index.html` file using Terraform
- Public read access configuration (via IAM)
- Terraform outputs
- CI automation for Terraform on GitHub

## Requirements
- Terraform >= 1.5
- GCP account
- Existing GCP project
- Service Account credentials file (JSON) with at least:
  - `roles/storage.admin`
      
