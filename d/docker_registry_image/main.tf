terraform {
  required_providers {
    docker = ">= 2.7.0"
  }
}

data "docker_registry_image" "this" {
  name = var.name
}

