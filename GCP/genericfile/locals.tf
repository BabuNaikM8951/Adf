locals {
  vm_instances = flatten([
    for vm_name, count in var.vm_images : [
      for i in range(count) : {
        name      = format("%s-%s-%02d", lower(replace(var.prefix, "_", "-")), lower(replace(vm_name, "_", "-")), i + 1)
        project   = var.vm_image_details[vm_name].project
        family    = var.vm_image_details[vm_name].family
        os_type   = var.vm_image_details[vm_name].os_type
      }
    ]
  ])
}
