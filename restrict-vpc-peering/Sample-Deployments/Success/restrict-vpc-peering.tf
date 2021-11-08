resource "google_compute_network_peering" "peering1" {
  name         = "peering1"
  network      = google_compute_network.default.id
  peer_network = google_compute_network.other.id
}


resource "google_compute_network_peering" "peering2" {
  name         = "peering2"
  network      = google_compute_network.other.id
  peer_network = google_compute_network.default.id
}

resource "google_compute_network" "default" {
  name                    = "foobar"
  auto_create_subnetworks = "false"
}

resource "google_compute_network" "other" {
  name                    = "other"
  auto_create_subnetworks = "false"
}