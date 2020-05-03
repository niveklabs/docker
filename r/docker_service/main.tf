terraform {
  required_providers {
    docker = ">= 2.7.0"
  }
}

resource "docker_service" "this" {
  auth = var.auth
  name = var.name

  dynamic "converge_config" {
    for_each = var.converge_config
    content {
      delay   = converge_config.value["delay"]
      timeout = converge_config.value["timeout"]
    }
  }

  dynamic "endpoint_spec" {
    for_each = var.endpoint_spec
    content {
      mode = endpoint_spec.value["mode"]

      dynamic "ports" {
        for_each = endpoint_spec.value.ports
        content {
          name           = ports.value["name"]
          protocol       = ports.value["protocol"]
          publish_mode   = ports.value["publish_mode"]
          published_port = ports.value["published_port"]
          target_port    = ports.value["target_port"]
        }
      }

    }
  }

  dynamic "labels" {
    for_each = var.labels
    content {
      label = labels.value["label"]
      value = labels.value["value"]
    }
  }

  dynamic "mode" {
    for_each = var.mode
    content {
      global = mode.value["global"]

      dynamic "replicated" {
        for_each = mode.value.replicated
        content {
          replicas = replicated.value["replicas"]
        }
      }

    }
  }

  dynamic "rollback_config" {
    for_each = var.rollback_config
    content {
      delay             = rollback_config.value["delay"]
      failure_action    = rollback_config.value["failure_action"]
      max_failure_ratio = rollback_config.value["max_failure_ratio"]
      monitor           = rollback_config.value["monitor"]
      order             = rollback_config.value["order"]
      parallelism       = rollback_config.value["parallelism"]
    }
  }

  dynamic "task_spec" {
    for_each = var.task_spec
    content {
      force_update   = task_spec.value["force_update"]
      networks       = task_spec.value["networks"]
      restart_policy = task_spec.value["restart_policy"]
      runtime        = task_spec.value["runtime"]

      dynamic "container_spec" {
        for_each = task_spec.value.container_spec
        content {
          args              = container_spec.value["args"]
          command           = container_spec.value["command"]
          dir               = container_spec.value["dir"]
          env               = container_spec.value["env"]
          groups            = container_spec.value["groups"]
          hostname          = container_spec.value["hostname"]
          image             = container_spec.value["image"]
          isolation         = container_spec.value["isolation"]
          read_only         = container_spec.value["read_only"]
          stop_grace_period = container_spec.value["stop_grace_period"]
          stop_signal       = container_spec.value["stop_signal"]
          user              = container_spec.value["user"]

          dynamic "configs" {
            for_each = container_spec.value.configs
            content {
              config_id   = configs.value["config_id"]
              config_name = configs.value["config_name"]
              file_gid    = configs.value["file_gid"]
              file_mode   = configs.value["file_mode"]
              file_name   = configs.value["file_name"]
              file_uid    = configs.value["file_uid"]
            }
          }

          dynamic "dns_config" {
            for_each = container_spec.value.dns_config
            content {
              nameservers = dns_config.value["nameservers"]
              options     = dns_config.value["options"]
              search      = dns_config.value["search"]
            }
          }

          dynamic "healthcheck" {
            for_each = container_spec.value.healthcheck
            content {
              interval     = healthcheck.value["interval"]
              retries      = healthcheck.value["retries"]
              start_period = healthcheck.value["start_period"]
              test         = healthcheck.value["test"]
              timeout      = healthcheck.value["timeout"]
            }
          }

          dynamic "hosts" {
            for_each = container_spec.value.hosts
            content {
              host = hosts.value["host"]
              ip   = hosts.value["ip"]
            }
          }

          dynamic "labels" {
            for_each = container_spec.value.labels
            content {
              label = labels.value["label"]
              value = labels.value["value"]
            }
          }

          dynamic "mounts" {
            for_each = container_spec.value.mounts
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
                  no_copy        = volume_options.value["no_copy"]

                  dynamic "labels" {
                    for_each = volume_options.value.labels
                    content {
                      label = labels.value["label"]
                      value = labels.value["value"]
                    }
                  }

                }
              }

            }
          }

          dynamic "privileges" {
            for_each = container_spec.value.privileges
            content {

              dynamic "credential_spec" {
                for_each = privileges.value.credential_spec
                content {
                  file     = credential_spec.value["file"]
                  registry = credential_spec.value["registry"]
                }
              }

              dynamic "se_linux_context" {
                for_each = privileges.value.se_linux_context
                content {
                  disable = se_linux_context.value["disable"]
                  level   = se_linux_context.value["level"]
                  role    = se_linux_context.value["role"]
                  type    = se_linux_context.value["type"]
                  user    = se_linux_context.value["user"]
                }
              }

            }
          }

          dynamic "secrets" {
            for_each = container_spec.value.secrets
            content {
              file_gid    = secrets.value["file_gid"]
              file_mode   = secrets.value["file_mode"]
              file_name   = secrets.value["file_name"]
              file_uid    = secrets.value["file_uid"]
              secret_id   = secrets.value["secret_id"]
              secret_name = secrets.value["secret_name"]
            }
          }

        }
      }

      dynamic "log_driver" {
        for_each = task_spec.value.log_driver
        content {
          name    = log_driver.value["name"]
          options = log_driver.value["options"]
        }
      }

      dynamic "placement" {
        for_each = task_spec.value.placement
        content {
          constraints = placement.value["constraints"]
          prefs       = placement.value["prefs"]

          dynamic "platforms" {
            for_each = placement.value.platforms
            content {
              architecture = platforms.value["architecture"]
              os           = platforms.value["os"]
            }
          }

        }
      }

      dynamic "resources" {
        for_each = task_spec.value.resources
        content {

          dynamic "limits" {
            for_each = resources.value.limits
            content {
              memory_bytes = limits.value["memory_bytes"]
              nano_cpus    = limits.value["nano_cpus"]

              dynamic "generic_resources" {
                for_each = limits.value.generic_resources
                content {
                  discrete_resources_spec = generic_resources.value["discrete_resources_spec"]
                  named_resources_spec    = generic_resources.value["named_resources_spec"]
                }
              }

            }
          }

          dynamic "reservation" {
            for_each = resources.value.reservation
            content {
              memory_bytes = reservation.value["memory_bytes"]
              nano_cpus    = reservation.value["nano_cpus"]

              dynamic "generic_resources" {
                for_each = reservation.value.generic_resources
                content {
                  discrete_resources_spec = generic_resources.value["discrete_resources_spec"]
                  named_resources_spec    = generic_resources.value["named_resources_spec"]
                }
              }

            }
          }

        }
      }

    }
  }

  dynamic "update_config" {
    for_each = var.update_config
    content {
      delay             = update_config.value["delay"]
      failure_action    = update_config.value["failure_action"]
      max_failure_ratio = update_config.value["max_failure_ratio"]
      monitor           = update_config.value["monitor"]
      order             = update_config.value["order"]
      parallelism       = update_config.value["parallelism"]
    }
  }

}

