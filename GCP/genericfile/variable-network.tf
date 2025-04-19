variable "gcp_comp_network_name" {
  description = "Enter Vpc Name"
    type = string
  
  
}
variable "gcp_comp_network_auto_create_subnetworks" {
    type = bool
    default = false
  
}
variable "gcp_comp_network_subnetwork_name" {
  description = "Enter the subnetwork Name"
    type = string
    
  
}

variable "gcp_comp_network_region" {
  description = "Enter the Region EX:us_central1"
    type = string
    
  
}

variable "gcp_comp_network_aggregation_interval" {
    type = string
    default = "INTERVAL_5_SEC"
  
}
variable "ingress_allowfirewall_name" {
    type = string
    description = "Enter ingressallowfirewall name"
    
}

variable "ingress_firewall_direction" {
    type = string
    default = "INGRESS" 
}

variable "ingress_allow_rules" {
  description = "Enter ingress allowrules of firewall.(Ex:[{protocol=\"tcp\", ports=[\"443\"]}, {protocol=\"udp\", ports=[\"53\"]}])"
  type        = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "ingress_deny_rules" {
  description = "Enter egress denyrules of firewall.(Ex:[{protocol=\"tcp\", ports=[\"22\"]}, {protocol=\"udp\", ports=[\"22\"]}])"
  type        = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "ingress_allowfirewall_source_ranges" {
  description = "Enter the ingres sourcerange EX:[\"192.168.1.1/32\"]"
    type = list
    
    
}
variable "ingress_allowfirewall_priority" {
  description = "Enter the ingress priority Ex:200"
    type = number
     
}

variable "ingress_denyfirewall_name" {
    type = string
    description = "Enter ingressdenyfirewall name"
    
}

variable "ingress_firewall_denysource_ranges" {
  description = "Enter the ingress denysource range Ex:[\"192.168.1.1/32\"]"
    type = list
    
    
}
variable "ingress_firewall_denypriority" {
  description = "Enter the ingress firewall denypriority EX:200"
    type = number
    
}

variable "egress_allowfirewall_name" {
  description = "Enter egressallowfirewall name"
  type        = string
}

variable "egress_firewall_direction" {
    type = string
    default = "EGRESS" 
}

variable "egress_allow_rules" {
  description = "Enter egress allowrules of firewall.(Ex:[{protocol=\"tcp\", ports=[\"443\"]}, {protocol=\"udp\", ports=[\"53\"]}])"
  type        = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "egress_deny_rules" {
  description = "Enter egress denyrules of firewall.(Ex:[{protocol=\"tcp\", ports=[\"22\"]}, {protocol=\"udp\", ports=[\"22\"]}])"
  type        = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "egress_allowfirewall_source_ranges" {
  description = "Enter the egress allowfirewall source range Ex:[\"192.168.1.1/32\"]"
    type = list
    
    
}
variable "egress_allowfirewall_priority" {
  description = "Enter the egress allowfirewall prioirty Ex:200"
    type = number
    
}

variable "egress_denyfirewall_name" {
  description = "Enter egressdenyfirewall name"
  type        = string
}

variable "egress_denyfirewall_source_ranges" {
  description = "Enter the egress denyfirewall source range Ex:[\"192.168.1.1/32\"]"
    type = list
    
    
}
variable "egress_denyfirewall_priority" {
  description = "Enter the egressdenyfirewal priority Ex:200"
    type = number
    
}

variable "subnet_cidr" {
  description = "Enter the subnet_cidr (e.g.,192.168.0.0/16)"
  type        = string
}