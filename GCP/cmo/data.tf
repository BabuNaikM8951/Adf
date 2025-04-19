data "google_compute_network" "vpc" {
  for_each = { for vpc in var.existing_vpcs : vpc.name => vpc }
  name     = each.value.name
  project  = each.value.project_id
}

data "google_compute_subnetwork" "subnet" {
  for_each = { for subnet in var.existing_subnets : subnet.name => subnet }
  name     = each.value.name
  region   = each.value.region
  project  = each.value.project_id
}

data "google_compute_image" "vm_images" {
  for_each = { for instance in local.vm_instances : instance.name => instance }
  family  = each.value.family
  project = each.value.project
}
