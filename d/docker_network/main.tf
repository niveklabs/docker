terraform {
  required_providers {
    docker = ">= 2.7.1"
  }
}

data "docker_network" "this" {
  name = var.name
}

