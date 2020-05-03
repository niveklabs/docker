terraform {
  required_providers {
    docker = ">= 2.6.0"
  }
}

data "docker_network" "this" {
  name = var.name

  dynamic "ipam_config" {
    for_each = var.ipam_config
    content {
      aux_address = ipam_config.value["aux_address"]
      gateway     = ipam_config.value["gateway"]
      ip_range    = ipam_config.value["ip_range"]
      subnet      = ipam_config.value["subnet"]
    }
  }

}

