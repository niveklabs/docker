output "bridge" {
  description = "returns a string"
  value       = docker_container.this.bridge
}

output "container_logs" {
  description = "returns a string"
  value       = docker_container.this.container_logs
}

output "exit_code" {
  description = "returns a number"
  value       = docker_container.this.exit_code
}

output "gateway" {
  description = "returns a string"
  value       = docker_container.this.gateway
}

output "id" {
  description = "returns a string"
  value       = docker_container.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = docker_container.this.ip_address
}

output "ip_prefix_length" {
  description = "returns a number"
  value       = docker_container.this.ip_prefix_length
}

output "network_data" {
  description = "returns a list of object"
  value       = docker_container.this.network_data
}

output "this" {
  value = docker_container.this
}

