terraform {
  required_providers {
    docker = ">= 2.7.0"
  }
}

resource "docker_config" "this" {
  data = var.data
  name = var.name
}

