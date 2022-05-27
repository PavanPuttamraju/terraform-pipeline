module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  project_id  = var.project_id 
  name = var.bucket_name
  prefix = ""
  storage_class = var.bucket_storage_class
  location = var.bucket_location
  force_destroy = var.bucket_force_destroy
  versioning = var.bucket_versioning
  lifecycle_rules = [{
    condition = {
      num_newer_version = 2,
      age = 1
    } 
    action = {
      type = "Delete"
    }
  }]
  
}










