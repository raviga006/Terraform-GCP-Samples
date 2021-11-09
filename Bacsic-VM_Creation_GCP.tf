terraform {
  required_providers {
    google = {
      source = "hashicorp/google"

    }
  }
}

provider "google" {
  credentials = file(" Update json file name and location here")
  project = "update Project here"
    region  = "asia-south2"
  zone    = "asia-south2-a"
}

resource "google_compute_instance" "vmtestongcp" {
  name         = "vm-instance"
  machine_type = "f1-micro"

boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
}


network_interface {
    network = "default" 
}
}

