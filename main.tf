terraform {
    backend "gcs" {
        bucket = "cicd_terraform_state"
        prefix = "prod"
    }
}
variable "project_id" {
    type = string
    default = "rosy-crawler-389806"
}
variable "region_eu" {
    type = string
    default = "europe-west1"
}

provider "google" {
    project = var.project_id
    region  = var.region_eu
}