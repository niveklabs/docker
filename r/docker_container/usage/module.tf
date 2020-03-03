module "docker_container" {
  source = "./docker/r/docker_container"

  attach                = null
  command               = []
  cpu_set               = null
  cpu_shares            = null
  destroy_grace_seconds = null
  dns                   = []
  dns_opts              = []
  dns_search            = []
  domainname            = null
  entrypoint            = []
  env                   = []
  group_add             = []
  hostname              = null
  image                 = null
  ipc_mode              = null
  links                 = []
  log_driver            = null
  log_opts              = {}
  logs                  = null
  max_retry_count       = null
  memory                = null
  memory_swap           = null
  must_run              = null
  name                  = null
  network_alias         = []
  network_mode          = null
  networks              = []
  pid_mode              = null
  privileged            = null
  publish_all_ports     = null
  read_only             = null
  restart               = null
  rm                    = null
  shm_size              = null
  start                 = null
  sysctls               = {}
  tmpfs                 = {}
  user                  = null
  userns_mode           = null
  working_dir           = null

  capabilities = [{
    add  = []
    drop = []
  }]

  devices = [{
    container_path = null
    host_path      = null
    permissions    = null
  }]

  healthcheck = [{
    interval     = null
    retries      = null
    start_period = null
    test         = []
    timeout      = null
  }]

  host = [{
    host = null
    ip   = null
  }]

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

  networks_advanced = [{
    aliases      = []
    ipv4_address = null
    ipv6_address = null
    name         = null
  }]

  ports = [{
    external = null
    internal = null
    ip       = null
    protocol = null
  }]

  ulimit = [{
    hard = null
    name = null
    soft = null
  }]

  upload = [{
    content        = null
    content_base64 = null
    executable     = null
    file           = null
    source         = null
    source_hash    = null
  }]

  volumes = [{
    container_path = null
    from_container = null
    host_path      = null
    read_only      = null
    volume_name    = null
  }]
}
