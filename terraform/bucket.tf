variable "project_id" {
    type = string
    default = "rosy-crawler-389806"
}
variable "region_eu" {
    type = string
    default = "europe-west1"
}

resource "google_storage_bucket" "raw" {
  project = var.project_id
  name = "${var.project_id}-raw"
  force_destroy = false
  uniform_bucket_level_access = true
  location = var.region_eu
}