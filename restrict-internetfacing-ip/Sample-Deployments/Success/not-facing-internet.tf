resource "google_compute_firewall" "rules" {
  project       = "my-project-name"
  name          = "my-firewall-rule"
  network       = "default"
  description   = "Creates ingress rule facing the internet"
  direction     = "INGRESS"
  source_ranges = ["10.36.87.1/32"]

  allow {
    protocol  = "tcp"
    ports     = ["80", "8080", "1000-2000"]
  }

  allow {
    protocol  = "https"
    ports     = ["443"]
  }
}