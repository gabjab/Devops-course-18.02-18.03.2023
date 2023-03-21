#https://registry.terraform.io/providers/hashicorp/google/latest/docs
#test

provider "google" {
  project     = "teak-trainer-381311"
  region      = "us-central1"
}

#https://terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket  = "tf-state-prod-gabi1"
    prefix  = "terraform/state"
  }
  required_providers{
   google = {
     source = "hashicorp/google"
     version = "~>4.0"
    }
  }
}

