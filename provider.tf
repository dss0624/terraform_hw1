terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }
}

provider "google" {
  credentials = file("buoyant-truck-356209-78130b5a35d8.json")
  project     = "buoyant-truck-356209"
  region      = "us-central1"
  zone        = "us-central1-c"
}




