resource "google_compute_network" "gcp_comp_vpc_network" {
  project = var.project_id
  name = var.gcp_comp_network_name
  auto_create_subnetworks = var.gcp_comp_network_auto_create_subnetworks
}

resource "google_compute_subnetwork" "gcp_comp_network_with_private_secondary_ip_ranges" {
  project = var.project_id
  name          = var.gcp_comp_network_subnetwork_name
  ip_cidr_range = var.subnet_cidr
  network       = google_compute_network.gcp_comp_vpc_network.id
  log_config {
    aggregation_interval = var.gcp_comp_network_aggregation_interval
  }
  }

resource "google_compute_firewall" "gcp_comp_ingress_allowfirewall" {
  project = var.project_id
  name    = var.ingress_allowfirewall_name
  network = google_compute_network.gcp_comp_vpc_network.name
  direction = var.ingress_firewall_direction


dynamic "allow" {
    for_each = var.ingress_allow_rules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }
 
  source_ranges = var.ingress_allowfirewall_source_ranges
  priority = var.ingress_allowfirewall_priority
}

resource "google_compute_firewall" "gcp_comp_ingress_denyfirewall" {
  project = var.project_id
  name    = var.ingress_denyfirewall_name
  network = google_compute_network.gcp_comp_vpc_network.name
  direction = var.ingress_firewall_direction

   dynamic "deny" {
    for_each = var.ingress_deny_rules
    content {
      protocol = deny.value.protocol
      ports    = deny.value.ports
    }
  }

  
  source_ranges = var.ingress_firewall_denysource_ranges
  priority = var.ingress_firewall_denypriority
}

resource "google_compute_firewall" "gcp_comp_egress_firewall" {
  project = var.project_id
  name    = var.egress_allowfirewall_name
  network = google_compute_network.gcp_comp_vpc_network.name
  direction = var.egress_firewall_direction

  
dynamic "allow" {
    for_each = var.egress_allow_rules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }

  source_ranges = var.egress_allowfirewall_source_ranges
  priority = var.egress_allowfirewall_priority
}

resource "google_compute_firewall" "gcp_comp_egress_denyfirewall" {
  project = var.project_id
  name    = var.egress_denyfirewall_name
  network = google_compute_network.gcp_comp_vpc_network.name
  direction = var.egress_firewall_direction

  # Dynamic deny blocks
  dynamic "deny" {
    for_each = var.egress_deny_rules
    content {
      protocol = deny.value.protocol
      ports    = deny.value.ports
    }
  }
  # Compliant for "vpc-missing-secure-fw-rules-inbound" Policy, Where Priority is "65000" and source_ranges contains "0.0.0.0/0" and deny Protocol equals "all" and direction equals Ingress
  source_ranges = var.egress_denyfirewall_source_ranges
  priority = var.egress_denyfirewall_priority
}
resource "google_compute_address" "public_ip" {
  for_each = { for instance in local.vm_instances : instance.name => instance }
  name   = format("%s-ip", each.key)
  region = var.region
}
