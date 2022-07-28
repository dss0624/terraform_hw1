  resource "google_storage_bucket" "hillel-18-Sosnytskyi" {
  name          = "myterraformbucket"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}

  resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  metadata_startup_script = "sudo apt install nginx"

   network_interface {
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
}
