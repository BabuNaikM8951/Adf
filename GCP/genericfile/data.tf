
data "google_compute_image" "vm_images" {
  for_each = { for instance in local.vm_instances : instance.name => instance }
  family  = each.value.family
  project = each.value.project
}
