terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "vm" {
  name   = var.vm_name
  image  = var.vm_image
  cpus   = var.vm_cpus
  memory = var.vm_memory

  network_adapter {
    type           = "bridged"
    host_interface = "en0"
  }
}

variable "vm_name" {
  type = string
}

variable "vm_image" {
  type = string
}

variable "vm_cpus" {
  type = number
}

variable "vm_memory" {
  type = string
}