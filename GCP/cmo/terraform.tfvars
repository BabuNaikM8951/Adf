project_id       = "acn-sacred-alpha-205607"
region           = "us-central1"
zone             = "us-central1-a"
prefix           = "cmsr"
vm_size          = "n1-standard-1"
os_disk_type     = "pd-standard"

existing_vpcs = [
  {
    name       = "ssm"
    project_id = "acn-sacred-alpha-205607"
  }
]
existing_subnets = [
  {
    name       = "ssm"
    vpc_name   = "ssm"
    project_id = "acn-sacred-alpha-205607"
    region     = "us-central1"
  }
]


