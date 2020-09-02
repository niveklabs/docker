terraform {
  required_providers {
    docker = ">= 2.7.2"
  }
}

resource "docker_volume" "this" {
  driver      = var.driver
  driver_opts = var.driver_opts
  name        = var.name

  dynamic "labels" {
    for_each = var.labels
    content {
      label = labels.value["label"]
      value = labels.value["value"]
    }
  }

}

