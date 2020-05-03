variable "attach" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "command" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "cpu_set" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "cpu_shares" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "destroy_grace_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "dns" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "dns_opts" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "dns_search" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "domainname" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "entrypoint" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "env" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "group_add" {
  description = "(optional) - Additional groups for the container user"
  type        = set(string)
  default     = null
}

variable "hostname" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "image" {
  description = "(required)"
  type        = string
}

variable "ipc_mode" {
  description = "(optional) - IPC sharing mode for the container"
  type        = string
  default     = null
}

variable "links" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "log_driver" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "log_opts" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "logs" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "max_retry_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "memory" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "memory_swap" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "must_run" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network_alias" {
  description = "(optional) - Set an alias for the container in all specified networks"
  type        = set(string)
  default     = null
}

variable "network_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "networks" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "pid_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "privileged" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "publish_all_ports" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "read_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "restart" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "rm" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "shm_size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "start" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "sysctls" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "tmpfs" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "user" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "userns_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "working_dir" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "capabilities" {
  description = "nested mode: NestingSet, min items: 0, max items: 1"
  type = set(object(
    {
      add  = set(string)
      drop = set(string)
    }
  ))
  default = []
}

variable "devices" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      container_path = string
      host_path      = string
      permissions    = string
    }
  ))
  default = []
}

variable "healthcheck" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      interval     = string
      retries      = number
      start_period = string
      test         = list(string)
      timeout      = string
    }
  ))
  default = []
}

variable "host" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      host = string
      ip   = string
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

variable "mounts" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
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
  default = []
}

variable "networks_advanced" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      aliases      = set(string)
      ipv4_address = string
      ipv6_address = string
      name         = string
    }
  ))
  default = []
}

variable "ports" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      external = number
      internal = number
      ip       = string
      protocol = string
    }
  ))
  default = []
}

variable "ulimit" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      hard = number
      name = string
      soft = number
    }
  ))
  default = []
}

variable "upload" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      content        = string
      content_base64 = string
      executable     = bool
      file           = string
      source         = string
      source_hash    = string
    }
  ))
  default = []
}

variable "volumes" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      container_path = string
      from_container = string
      host_path      = string
      read_only      = bool
      volume_name    = string
    }
  ))
  default = []
}

