variable "project_id" {
  description = "Enter the Project ID "
  type        = string
}

variable "credentials_file" {
  description = "Path to GCP credentials file(Ex: C:\\Users\\venkata.m.rao.ganta\\GCPkey\\cmsr.json)" 
  type        = string
}

variable "region" {
  description = "Enter the Region "
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Enter the Zone"
  type        = string
  default     = "us-central1-a"
}

variable "prefix" {
  description = "Enter the Prefix (Ex:CMSR)"
  type        = string
}

variable "admin_username" {
  description = "Enter the UserName"
  type        = string
}

variable "vm_size" {
  description = "Enter the Vm Size  (Ex:n1-standard-1)"
  type        = string
  default     = "n1-standard-1"
}

variable "os_disk_type" {
  description = "Enter the Osdisk type (Ex: pd-standard, pd-ssd)"
  type        = string
  default     = "pd-standard"
  validation {
    condition     = contains(["pd-standard", "pd-ssd"], var.os_disk_type)
    error_message = "OS disk type must be one of pd-standard or pd-ssd."
  }
}

variable "vm_images" {
  description = "Enter the Vm images(Ex:{\"Win16\"=1,\"RHL8\"=2})"
  type        = map(number)
}

variable "existing_vpcs" {
  description = "Enter the Existing Vpc"
  type = list(object({
    name       = string
    project_id = string
  }))
  default = []
}

variable "existing_subnets" {
  description = "Enter the existing Subnets"
  type = list(object({
    name       = string
    vpc_name   = string
    project_id = string
    region     = string
  }))
  default = []
}

variable "ssh_key_path" {
  description = "Enter the ssh key path (Ex:C:\\Users\\venkata.m.rao.ganta\\GCPkey\\key.txt)"
  type        = string
}

variable "additionaltags" {
  description = "Enter the additionaltags (Ex:[\"user1\",\"user2\"])"
  type        = list(string)
}

variable "additionallabel"{
  description = "Enter the additional lable (Ex:{\"acp-ims-scc\":\"yes\"})"
  type = map(string)
}