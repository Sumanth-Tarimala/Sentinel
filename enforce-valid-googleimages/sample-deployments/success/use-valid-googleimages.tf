resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"
  labels =  {
    name = "Dev-Env"
    ttl  = "30sec"
    owner= "Admin"

  }
  
  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

}