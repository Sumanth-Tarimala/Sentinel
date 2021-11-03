policy "enforce-secure-reboot" {
  source            = "./enforce-secure-reboot.sentinel"
  enforcement_level = "soft-mandatory"
}

module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}

  module "tfplan/v2" {
    source = "./mock-tfplan-v2-success.sentinel"
  }
