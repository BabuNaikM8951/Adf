terraform {
  backend "gcs" {
    bucket  = "terraformstatefilebackend"
    prefix  = "terraformstatefile-generic"
credentials = "C:/Users/venkata.m.rao.ganta/GCPkey/cmsr.json"
  }
}