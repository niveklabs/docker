output "driver" {
  description = "returns a string"
  value       = docker_network.this.driver
}

output "id" {
  description = "returns a string"
  value       = docker_network.this.id
}

output "internal" {
  description = "returns a bool"
  value       = docker_network.this.internal
}

output "options" {
  description = "returns a map of string"
  value       = docker_network.this.options
}

output "scope" {
  description = "returns a string"
  value       = docker_network.this.scope
}

output "this" {
  value = docker_network.this
}

