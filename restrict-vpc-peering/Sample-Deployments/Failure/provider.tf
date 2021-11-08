provider "google" {
 credentials = file("sumanth5454-33867b610403.json")
 project     = var.project
 region      = var.region
 zone        = var.zone

}

provider random {
  
}

resource "random_id" "id" {
	  byte_length = 8
}

provider "google-beta" {
 credentials = file("sumanth5454-33867b610403.json")
 project     = var.project
 region      = var.region
 zone        = var.zone

}

