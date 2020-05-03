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

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

