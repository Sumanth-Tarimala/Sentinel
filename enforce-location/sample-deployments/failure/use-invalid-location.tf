resource "google_compute_region_backend_service" "default" {
  name                            = "region-service"
  region                          = "us-east1"
  connection_draining_timeout_sec = 10
  session_affinity                = "CLIENT_IP"
}
