variable "avdLocation" {
  description = "Location of the resource group."
}
variable "rg_network" {
  type        = string
  description = "Name of the Resource group in which to deploy network resources"
}

variable "vnet" {
  type        = string
  description = "Name of avd vnet"
}

variable "snet" {
  type        = string
  description = "Name of subnet"
}

variable "nsg" {
  type        = string
  description = "Name of the nsg"
}

variable "rt" {
  type        = string
  description = "Name of the route table"
}

variable "dns_servers" {
  type        = list(string)
  description = "Custom DNS configuration"
}

variable "vnet_range" {
  type        = list(string)
  description = "Address range for deployment VNet"
}
variable "subnet_range" {
  type        = list(string)
  description = "Address range for session host subnet"
}

variable "prefix" {
  type        = string
  description = "Prefix of the name of the AVD machine(s)"
}

variable "hub_subscription_id" {
  type        = string
  description = "Hub Subscription id"
}

variable "spoke_subscription_id" {
  type        = string
  description = "Spoke Subscription id"
}

variable "tags" {
  type = map(any)
  default = {
    environment = "poc"
    source      = "https://github.com/Azure/avdaccelerator/tree/main/workload/terraform/network"
  }
}

  