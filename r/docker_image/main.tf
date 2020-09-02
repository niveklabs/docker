terraform {
  required_providers {
    docker = ">= 2.7.2"
  }
}

resource "docker_image" "this" {
  keep_locally  = var.keep_locally
  name          = var.name
  pull_trigger  = var.pull_trigger
  pull_triggers = var.pull_triggers
}

