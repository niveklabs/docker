terraform {
  required_providers {
    docker = ">= 2.7.2"
  }
}

resource "docker_config" "this" {
  data = var.data
  name = var.name
}

