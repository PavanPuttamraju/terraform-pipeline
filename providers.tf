provider "google" {
project = var.project_id
region  = var.bucket_location
credentials = "./SA_key.json"
}
