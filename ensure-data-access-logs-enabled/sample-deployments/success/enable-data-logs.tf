resource "google_compute_subnetwork" "subnet-with-logging" {
  name          = "log-test-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.custom-test.id

  log_config {
    aggregation_interval = "INTERVAL_30_SEC"
    flow_sampling        = 1 
    metadata             = "INCLUDE_ALL_METADATA"
  }
}

resource "google_compute_network" "custom-test" {
  name                    = "log-test-network"
  auto_create_subnetworks = false
}