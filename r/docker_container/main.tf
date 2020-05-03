terraform {
  required_providers {
    docker = ">= 2.6.0"
  }
}

resource "docker_container" "this" {
  attach                = var.attach
  command               = var.command
  cpu_set               = var.cpu_set
  cpu_shares            = var.cpu_shares
  destroy_grace_seconds = var.destroy_grace_seconds
  dns                   = var.dns
  dns_opts              = var.dns_opts
  dns_search            = var.dns_search
  domainname            = var.domainname
  entrypoint            = var.entrypoint
  env                   = var.env
  group_add             = var.group_add
  hostname              = var.hostname
  image                 = var.image
  ipc_mode              = var.ipc_mode
  labels                = var.labels
  links                 = var.links
  log_driver            = var.log_driver
  log_opts              = var.log_opts
  logs                  = var.logs
  max_retry_count       = var.max_retry_count
  memory                = var.memory
  memory_swap           = var.memory_swap
  must_run              = var.must_run
  name                  = var.name
  network_alias         = var.network_alias
  network_mode          = var.network_mode
  networks              = var.networks
  pid_mode              = var.pid_mode
  privileged            = var.privileged
  publish_all_ports     = var.publish_all_ports
  read_only             = var.read_only
  restart               = var.restart
  rm                    = var.rm
  shm_size              = var.shm_size
  start                 = var.start
  sysctls               = var.sysctls
  tmpfs                 = var.tmpfs
  user                  = var.user
  userns_mode           = var.userns_mode
  working_dir           = var.working_dir

  dynamic "capabilities" {
    for_each = var.capabilities
    content {
      add  = capabilities.value["add"]
      drop = capabilities.value["drop"]
    }
  }

  dynamic "devices" {
    for_each = var.devices
    content {
      container_path = devices.value["container_path"]
      host_path      = devices.value["host_path"]
      permissions    = devices.value["permissions"]
    }
  }

  dynamic "healthcheck" {
    for_each = var.healthcheck
    content {
      interval     = healthcheck.value["interval"]
      retries      = healthcheck.value["retries"]
      start_period = healthcheck.value["start_period"]
      test         = healthcheck.value["test"]
      timeout      = healthcheck.value["timeout"]
    }
  }

  dynamic "host" {
    for_each = var.host
    content {
      host = host.value["host"]
      ip   = host.value["ip"]
    }
  }

  dynamic "mounts" {
    for_each = var.mounts
    content {
      read_only = mounts.value["read_only"]
      source    = mounts.value["source"]
      target    = mounts.value["target"]
      type      = mounts.value["type"]

      dynamic "bind_options" {
        for_each = mounts.value.bind_options
        content {
          propagation = bind_options.value["propagation"]
        }
      }

      dynamic "tmpfs_options" {
        for_each = mounts.value.tmpfs_options
        content {
          mode       = tmpfs_options.value["mode"]
          size_bytes = tmpfs_options.value["size_bytes"]
        }
      }

      dynamic "volume_options" {
        for_each = mounts.value.volume_options
        content {
          driver_name    = volume_options.value["driver_name"]
          driver_options = volume_options.value["driver_options"]
          labels         = volume_options.value["labels"]
          no_copy        = volume_options.value["no_copy"]
        }
      }

    }
  }

  dynamic "networks_advanced" {
    for_each = var.networks_advanced
    content {
      aliases      = networks_advanced.value["aliases"]
      ipv4_address = networks_advanced.value["ipv4_address"]
      ipv6_address = networks_advanced.value["ipv6_address"]
      name         = networks_advanced.value["name"]
    }
  }

  dynamic "ports" {
    for_each = var.ports
    content {
      external = ports.value["external"]
      internal = ports.value["internal"]
      ip       = ports.value["ip"]
      protocol = ports.value["protocol"]
    }
  }

  dynamic "ulimit" {
    for_each = var.ulimit
    content {
      hard = ulimit.value["hard"]
      name = ulimit.value["name"]
      soft = ulimit.value["soft"]
    }
  }

  dynamic "upload" {
    for_each = var.upload
    content {
      content        = upload.value["content"]
      content_base64 = upload.value["content_base64"]
      executable     = upload.value["executable"]
      file           = upload.value["file"]
    }
  }

  dynamic "volumes" {
    for_each = var.volumes
    content {
      container_path = volumes.value["container_path"]
      from_container = volumes.value["from_container"]
      host_path      = volumes.value["host_path"]
      read_only      = volumes.value["read_only"]
      volume_name    = volumes.value["volume_name"]
    }
  }

}

