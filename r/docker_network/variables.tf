variable "attachable" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "check_duplicate" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "driver" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ingress" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "internal" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "ipam_driver" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ipv6" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "options" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "ipam_config" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      aux_address = map(string)
      gateway     = string
      ip_range    = string
      subnet      = string
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

