terraform {
  required_providers {
    docker = ">= 2.6.0"
  }
}

resource "docker_config" "this" {
  data = var.data
  name = var.name
}

