module "docker_container" {
  source = "./modules/docker/r/docker_container"

  # attach - (optional) is a type of bool
  attach = null
  # command - (optional) is a type of list of string
  command = []
  # cpu_set - (optional) is a type of string
  cpu_set = null
  # cpu_shares - (optional) is a type of number
  cpu_shares = null
  # destroy_grace_seconds - (optional) is a type of number
  destroy_grace_seconds = null
  # dns - (optional) is a type of set of string
  dns = []
  # dns_opts - (optional) is a type of set of string
  dns_opts = []
  # dns_search - (optional) is a type of set of string
  dns_search = []
  # domainname - (optional) is a type of string
  domainname = null
  # entrypoint - (optional) is a type of list of string
  entrypoint = []
  # env - (optional) is a type of set of string
  env = []
  # group_add - (optional) is a type of set of string
  group_add = []
  # hostname - (optional) is a type of string
  hostname = null
  # image - (required) is a type of string
  image = null
  # ipc_mode - (optional) is a type of string
  ipc_mode = null
  # links - (optional) is a type of set of string
  links = []
  # log_driver - (optional) is a type of string
  log_driver = null
  # log_opts - (optional) is a type of map of string
  log_opts = {}
  # logs - (optional) is a type of bool
  logs = null
  # max_retry_count - (optional) is a type of number
  max_retry_count = null
  # memory - (optional) is a type of number
  memory = null
  # memory_swap - (optional) is a type of number
  memory_swap = null
  # must_run - (optional) is a type of bool
  must_run = null
  # name - (required) is a type of string
  name = null
  # network_alias - (optional) is a type of set of string
  network_alias = []
  # network_mode - (optional) is a type of string
  network_mode = null
  # networks - (optional) is a type of set of string
  networks = []
  # pid_mode - (optional) is a type of string
  pid_mode = null
  # privileged - (optional) is a type of bool
  privileged = null
  # publish_all_ports - (optional) is a type of bool
  publish_all_ports = null
  # read_only - (optional) is a type of bool
  read_only = null
  # restart - (optional) is a type of string
  restart = null
  # rm - (optional) is a type of bool
  rm = null
  # shm_size - (optional) is a type of number
  shm_size = null
  # start - (optional) is a type of bool
  start = null
  # sysctls - (optional) is a type of map of string
  sysctls = {}
  # tmpfs - (optional) is a type of map of string
  tmpfs = {}
  # user - (optional) is a type of string
  user = null
  # userns_mode - (optional) is a type of string
  userns_mode = null
  # working_dir - (optional) is a type of string
  working_dir = null

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
