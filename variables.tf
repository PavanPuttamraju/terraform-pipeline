variable "project_id" {
description = "Project ID where GCP bucket will be provisioned"
}

variable "bucket_name" {
description = "GCS Bucket name. Value should be unique ."
type        = list(string)
}

variable "bucket_location" {
description = "location of the bucket"
type        = string
default     = "US"
}

variable "bucket_storage_class" {
description = "type of storage class for gcs bucket"
default     = "standard"
}

variable "bucket_force_destroy" {
type = map(bool)
default     = {
    "first" = false
}
}

variable "bucket_versioning" {
type = map(bool)
default     = {
    "first" = true
}
}








