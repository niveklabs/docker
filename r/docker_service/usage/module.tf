module "docker_service" {
  source = "./modules/docker/r/docker_service"

  auth = {}
  name = null

  converge_config = [{
    delay   = null
    timeout = null
  }]

  endpoint_spec = [{
    mode = null
    ports = [{
      name           = null
      protocol       = null
      publish_mode   = null
      published_port = null
      target_port    = null
    }]
  }]

  labels = [{
    label = null
    value = null
  }]

  mode = [{
    global = null
    replicated = [{
      replicas = null
    }]
  }]

  rollback_config = [{
    delay             = null
    failure_action    = null
    max_failure_ratio = null
    monitor           = null
    order             = null
    parallelism       = null
  }]

  task_spec = [{
    container_spec = [{
      args    = []
      command = []
      configs = [{
        config_id   = null
        config_name = null
        file_gid    = null
        file_mode   = null
        file_name   = null
        file_uid    = null
      }]
      dir = null
      dns_config = [{
        nameservers = []
        options     = []
        search      = []
      }]
      env    = {}
      groups = []
      healthcheck = [{
        interval     = null
        retries      = null
        start_period = null
        test         = []
        timeout      = null
      }]
      hostname = null
      hosts = [{
        host = null
        ip   = null
      }]
      image     = null
      isolation = null
      labels = [{
        label = null
        value = null
      }]
      mounts = [{
        bind_options = [{
          propagation = null
        }]
        read_only = null
        source    = null
        target    = null
        tmpfs_options = [{
          mode       = null
          size_bytes = null
        }]
        type = null
        volume_options = [{
          driver_name    = null
          driver_options = {}
          labels = [{
            label = null
            value = null
          }]
          no_copy = null
        }]
      }]
      privileges = [{
        credential_spec = [{
          file     = null
          registry = null
        }]
        se_linux_context = [{
          disable = null
          level   = null
          role    = null
          type    = null
          user    = null
        }]
      }]
      read_only = null
      secrets = [{
        file_gid    = null
        file_mode   = null
        file_name   = null
        file_uid    = null
        secret_id   = null
        secret_name = null
      }]
      stop_grace_period = null
      stop_signal       = null
      user              = null
    }]
    force_update = null
    log_driver = [{
      name    = null
      options = {}
    }]
    networks = []
    placement = [{
      constraints = []
      platforms = [{
        architecture = null
        os           = null
      }]
      prefs = []
    }]
    resources = [{
      limits = [{
        generic_resources = [{
          discrete_resources_spec = []
          named_resources_spec    = []
        }]
        memory_bytes = null
        nano_cpus    = null
      }]
      reservation = [{
        generic_resources = [{
          discrete_resources_spec = []
          named_resources_spec    = []
        }]
        memory_bytes = null
        nano_cpus    = null
      }]
    }]
    restart_policy = {}
    runtime        = null
  }]

  update_config = [{
    delay             = null
    failure_action    = null
    max_failure_ratio = null
    monitor           = null
    order             = null
    parallelism       = null
  }]
}
