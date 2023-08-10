terraform {
    backend "gcs" {
        bucket = "cicd_terraform_state"
        prefix = "prod"
    }
}

provider "google" {
    project = var.project
    region  = var.region
}