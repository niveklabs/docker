variable "driver" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "driver_opts" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
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

