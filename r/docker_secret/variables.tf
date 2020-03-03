variable "data" {
  description = "(required) - Base64-url-safe-encoded secret data"
  type        = string
}

variable "name" {
  description = "(required) - User-defined name of the secret"
  type        = string
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

