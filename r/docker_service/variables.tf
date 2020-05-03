variable "auth" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the service"
  type        = string
}

variable "converge_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      delay   = string
      timeout = string
    }
  ))
  default = []
}

variable "endpoint_spec" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      mode = string
      ports = list(object(
        {
          name           = string
          protocol       = string
          publish_mode   = string
          published_port = number
          target_port    = number
        }
      ))
    }
  ))
  default = []
}

variable "labels" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      label = string
      value = string
    }
  ))
  default = []
}

variable "mode" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      global = bool
      replicated = list(object(
        {
          replicas = number
        }
      ))
    }
  ))
  default = []
}

variable "rollback_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      delay             = string
      failure_action    = string
      max_failure_ratio = string
      monitor           = string
      order             = string
      parallelism       = number
    }
  ))
  default = []
}

variable "task_spec" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      container_spec = list(object(
        {
          args    = list(string)
          command = list(string)
          configs = set(object(
            {
              config_id   = string
              config_name = string
              file_gid    = string
              file_mode   = number
              file_name   = string
              file_uid    = string
            }
          ))
          dir = string
          dns_config = list(object(
            {
              nameservers = list(string)
              options     = list(string)
              search      = list(string)
            }
          ))
          env    = map(string)
          groups = list(string)
          healthcheck = list(object(
            {
              interval     = string
              retries      = number
              start_period = string
              test         = list(string)
              timeout      = string
            }
          ))
          hostname = string
          hosts = set(object(
            {
              host = string
              ip   = string
            }
          ))
          image     = string
          isolation = string
          labels = set(object(
            {
              label = string
              value = string
            }
          ))
          mounts = set(object(
            {
              bind_options = list(object(
                {
                  propagation = string
                }
              ))
              read_only = bool
              source    = string
              target    = string
              tmpfs_options = list(object(
                {
                  mode       = number
                  size_bytes = number
                }
              ))
              type = string
              volume_options = list(object(
                {
                  driver_name    = string
                  driver_options = map(string)
                  labels = set(object(
                    {
                      label = string
                      value = string
                    }
                  ))
                  no_copy = bool
                }
              ))
            }
          ))
          privileges = list(object(
            {
              credential_spec = list(object(
                {
                  file     = string
                  registry = string
                }
              ))
              se_linux_context = list(object(
                {
                  disable = bool
                  level   = string
                  role    = string
                  type    = string
                  user    = string
                }
              ))
            }
          ))
          read_only = bool
          secrets = set(object(
            {
              file_gid    = string
              file_mode   = number
              file_name   = string
              file_uid    = string
              secret_id   = string
              secret_name = string
            }
          ))
          stop_grace_period = string
          stop_signal       = string
          user              = string
        }
      ))
      force_update = number
      log_driver = list(object(
        {
          name    = string
          options = map(string)
        }
      ))
      networks = set(string)
      placement = list(object(
        {
          constraints = set(string)
          platforms = set(object(
            {
              architecture = string
              os           = string
            }
          ))
          prefs = set(string)
        }
      ))
      resources = list(object(
        {
          limits = list(object(
            {
              generic_resources = list(object(
                {
                  discrete_resources_spec = set(string)
                  named_resources_spec    = set(string)
                }
              ))
              memory_bytes = number
              nano_cpus    = number
            }
          ))
          reservation = list(object(
            {
              generic_resources = list(object(
                {
                  discrete_resources_spec = set(string)
                  named_resources_spec    = set(string)
                }
              ))
              memory_bytes = number
              nano_cpus    = number
            }
          ))
        }
      ))
      restart_policy = map(string)
      runtime        = string
    }
  ))
}

variable "update_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      delay             = string
      failure_action    = string
      max_failure_ratio = string
      monitor           = string
      order             = string
      parallelism       = number
    }
  ))
  default = []
}

