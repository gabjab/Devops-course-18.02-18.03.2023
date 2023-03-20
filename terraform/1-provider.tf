#https://registry.terraform.io/providers/hashicorp/google/latest/docs
#test

provider "google" {
  project     = "devops-course-18.02-18.03.2023"
  region      = "us-central1"
}

#https://terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket  = "tf-state-prod-gabi"
    prefix  = "terraform/state"
  }
  required_providers{
   google = {
     source = "hashicorp/google"
     version = "~>4.0"
    }
  }
}

