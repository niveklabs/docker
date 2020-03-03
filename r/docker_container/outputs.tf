output "bridge" {
  description = "returns a string"
  value       = docker_container.this.bridge
}

output "command" {
  description = "returns a list of string"
  value       = docker_container.this.command
}

output "container_logs" {
  description = "returns a string"
  value       = docker_container.this.container_logs
}

output "entrypoint" {
  description = "returns a list of string"
  value       = docker_container.this.entrypoint
}

output "env" {
  description = "returns a set of string"
  value       = docker_container.this.env
}

output "exit_code" {
  description = "returns a number"
  value       = docker_container.this.exit_code
}

output "gateway" {
  description = "returns a string"
  value       = docker_container.this.gateway
}

output "hostname" {
  description = "returns a string"
  value       = docker_container.this.hostname
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

output "ipc_mode" {
  description = "returns a string"
  value       = docker_container.this.ipc_mode
}

output "network_data" {
  description = "returns a list of object"
  value       = docker_container.this.network_data
}

output "shm_size" {
  description = "returns a number"
  value       = docker_container.this.shm_size
}

output "this" {
  value = docker_container.this
}
