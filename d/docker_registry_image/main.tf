terraform {
  required_providers {
    docker = ">= 2.6.0"
  }
}

data "docker_registry_image" "this" {
  name = var.name
}

