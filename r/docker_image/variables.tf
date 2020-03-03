variable "keep_locally" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "pull_trigger" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "pull_triggers" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

