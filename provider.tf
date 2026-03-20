terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.0.1"
    }
  }
}

provider "google" {
  # Configuration options
  project = "my-project-3-358101"
  region = "us-central1"
  zone = "us-central1-a"

}
