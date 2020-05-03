variable "name" {
  description = "(optional)"
  type        = string
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

