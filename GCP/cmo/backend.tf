terraform {
  backend "gcs" {
    bucket  = "terraformstatefilebackend"
    prefix  = "terraformstatefile"
credentials = "C:/Users/venkata.m.rao.ganta/GCPkey/cmsr.json"
  }
}