terraform {
  required_providers {
    docker = ">= 2.7.0"
  }
}

resource "docker_network" "this" {
  attachable      = var.attachable
  check_duplicate = var.check_duplicate
  driver          = var.driver
  ingress         = var.ingress
  internal        = var.internal
  ipam_driver     = var.ipam_driver
  ipv6            = var.ipv6
  name            = var.name
  options         = var.options

  dynamic "ipam_config" {
    for_each = var.ipam_config
    content {
      aux_address = ipam_config.value["aux_address"]
      gateway     = ipam_config.value["gateway"]
      ip_range    = ipam_config.value["ip_range"]
      subnet      = ipam_config.value["subnet"]
    }
  }

  dynamic "labels" {
    for_each = var.labels
    content {
      label = labels.value["label"]
      value = labels.value["value"]
    }
  }

}

