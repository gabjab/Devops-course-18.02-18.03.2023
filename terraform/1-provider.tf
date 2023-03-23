#https://registry.terraform.io/providers/hashicorp/google/latest/docs
#test

provider "google" {
  project     = "gabi1-381514"
  region      = "us-central1"
}

#https://terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket  = "tf-test-gabi"
    prefix  = "terraform/state"
  }
  required_providers{
   google = {
     source = "hashicorp/google"
     version = "~>4.0"
    }
  }
}

