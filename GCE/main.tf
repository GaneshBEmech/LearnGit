data "google_compute_network" "my_existing_vpc" {
    name = "vpc-auto-tf"
  
}

data "google_compute_subnetwork" "my_existing_subnetwork" {
    name = "vpc-auto-tf"
    #network = data.google_compute_network.my_existing_vpc.id
    region = "africa-south1"
    
}

resource "google_compute_instance" "instance" {
    name = "instance-tf-cloudbuild"
    machine_type = "e2-medium"
    zone = "africa-south1-a"
    network_interface {
        network = data.google_compute_network.my_existing_vpc.id
        subnetwork = data.google_compute_subnetwork.my_existing_subnetwork.id
    }

    boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
}
