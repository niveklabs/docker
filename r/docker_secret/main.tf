terraform {
  required_providers {
    docker = ">= 2.6.0"
  }
}

resource "docker_secret" "this" {
  data   = var.data
  labels = var.labels
  name   = var.name
}

