#https://regestry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service
#test

resource "google_project_service" "compute"{
 service = "compute.googleapis.com"
}

resource "google_project_service" "container"{
 service = "container.googleapis.com"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "main" {
  name                    = "main"
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
  mtu                     = 1460

  depends_on = [
    google_project_service.compute,
    google_project_service.container
  ]
}

