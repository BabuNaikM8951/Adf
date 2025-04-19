variable "vm_image_details" {
  description = "Details of VM images, including project, family, and os_type"
  type = map(object({
    project = string
    family  = string
    os_type = string
  }))
  default = {
    "Win16" = {
      project = "windows-cloud"
      family  = "windows-2016"
      os_type = "windows"
    },
    "Win19" = {
      project = "windows-cloud"
      family  = "windows-2019"
      os_type = "windows"
    },
    "Win22" = {
      project = "windows-cloud"
      family  = "windows-2022"
      os_type = "windows"
    },
    "RHL8" = {
      project = "rhel-cloud"
      family  = "rhel-8"
      os_type = "linux"
    },
    "RHL9" = {
      project = "rhel-cloud"
      family  = "rhel-9"
      os_type = "linux"
    },
    "Ub22" = {
      project = "ubuntu-os-cloud"
      family  = "ubuntu-2204-lts"
      os_type = "linux"
    },
    "Ub24" = {
      project = "ubuntu-os-cloud"
      family  = "ubuntu-2404-lts"
      os_type = "linux"
    },
    "SL12" = {
      project = "suse-cloud"
      family  = "sles-12"
      os_type = "linux"
    },
    "SL15" = {
      project = "suse-cloud"
      family  = "sles-15"
      os_type = "linux"

    }
  "vm" = {
  project = "suse-cloud"
  family = "sles-15-sp5"
  os_type = "linux"
}

  }
}
