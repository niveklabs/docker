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

output "dns" {
  description = "returns a set of string"
  value       = docker_container.this.dns
}

output "dns_opts" {
  description = "returns a set of string"
  value       = docker_container.this.dns_opts
}

output "entrypoint" {
  description = "returns a list of string"
  value       = docker_container.this.entrypoint
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

output "log_driver" {
  description = "returns a string"
  value       = docker_container.this.log_driver
}

output "log_opts" {
  description = "returns a map of string"
  value       = docker_container.this.log_opts
}

output "network_data" {
  description = "returns a list of object"
  value       = docker_container.this.network_data
}

output "shm_size" {
  description = "returns a number"
  value       = docker_container.this.shm_size
}

output "user" {
  description = "returns a string"
  value       = docker_container.this.user
}

output "working_dir" {
  description = "returns a string"
  value       = docker_container.this.working_dir
}

output "this" {
  value = docker_container.this
}

