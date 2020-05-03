variable "data" {
  description = "(required) - Base64-url-safe-encoded secret data"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - User-defined name of the secret"
  type        = string
}

