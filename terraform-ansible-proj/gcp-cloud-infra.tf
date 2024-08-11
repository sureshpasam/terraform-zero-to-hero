/*terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
  }
}
provider "google" {
  credentials = file("")
  project     = var.project_id
  region  = "europe-west4"
  zone    = "europe-west4-a"
}

resource "google_compute_instance" "terraform-managed-e2-small" {
  name         = "terraform"
  machine_type = "e2-small"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      #image = "centos-cloud/centos-stream-8"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    ssh-keys = ""  }
}

output "gce2-public-ip" {
  value = format("%s%s","ssh -i /Users/rahulwagh/.ssh/aws_ec2_terraform rahulwagh@",google_compute_instance.terraform-managed-e2-small.network_interface.0.access_config.0.nat_ip)
}
*/


