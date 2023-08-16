terraform {
    backend "gcs" {
        bucket = "cicd_terraform_state"
        prefix = "prod"
    }
}

provider "google" {
    project = var.project_id
    region  = var.region_eu
}