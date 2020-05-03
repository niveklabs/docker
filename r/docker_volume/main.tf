terraform {
  required_providers {
    docker = ">= 2.6.0"
  }
}

resource "docker_volume" "this" {
  driver      = var.driver
  driver_opts = var.driver_opts
  labels      = var.labels
  name        = var.name
}

