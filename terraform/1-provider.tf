#https://registry.terraform.io/providers/hashicorp/google/latest/docs
#test

provider "google" {
  project     = "sound-sanctuary-381109"
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

