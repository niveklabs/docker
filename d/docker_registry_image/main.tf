terraform {
  required_providers {
    docker = ">= 2.7.2"
  }
}

data "docker_registry_image" "this" {
  name = var.name
}

