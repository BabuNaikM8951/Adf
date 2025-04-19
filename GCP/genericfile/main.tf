resource "google_compute_instance" "vm_instance" {
  for_each = { for instance in local.vm_instances : instance.name => instance }
  name         = each.key
  machine_type = var.vm_size
  zone         = var.zone
  labels = var.labels
  boot_disk {
    initialize_params {
      image = data.google_compute_image.vm_images[each.value.name].self_link
      type  = var.os_disk_type
    }
  }

  network_interface {
    network    = google_compute_network.gcp_comp_vpc_network.id
    subnetwork = google_compute_subnetwork.gcp_comp_network_with_private_secondary_ip_ranges.id
    access_config {
      nat_ip = google_compute_address.public_ip[each.key].address
    }
  }

service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "terraform-vms@acn-sacred-alpha-205607.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  metadata = {
    block-project-ssh-keys = true
    ssh-keys = each.value.os_type == "linux" ? "${var.admin_username}:${file(var.ssh_key_path)}" : ""
  }

  tags = ["airid-4614", "http-server", "https-server"]
}
