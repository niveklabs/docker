output "driver" {
  description = "returns a string"
  value       = docker_volume.this.driver
}

output "id" {
  description = "returns a string"
  value       = docker_volume.this.id
}

output "mountpoint" {
  description = "returns a string"
  value       = docker_volume.this.mountpoint
}

output "name" {
  description = "returns a string"
  value       = docker_volume.this.name
}

output "this" {
  value = docker_volume.this
}

