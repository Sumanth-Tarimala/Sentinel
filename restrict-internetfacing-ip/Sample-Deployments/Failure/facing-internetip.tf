resource "google_compute_firewall" "rules" {
  project       = "my-project-name"
  name          = "my-firewall-rule"
  network       = "default"
  description   = "Creates ingress rule facing the internet"
  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol  = "tcp"
    ports     = ["80"]
  }
}