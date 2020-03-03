output "id" {
  description = "returns a string"
  value       = docker_config.this.id
}

output "this" {
  value = docker_config.this
}

