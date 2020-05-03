terraform {
  required_providers {
    docker = ">= 2.7.0"
  }
}

resource "docker_secret" "this" {
  data = var.data
  name = var.name

  dynamic "labels" {
    for_each = var.labels
    content {
      label = labels.value["label"]
      value = labels.value["value"]
    }
  }

}

