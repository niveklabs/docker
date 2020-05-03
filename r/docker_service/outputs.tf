output "id" {
  description = "returns a string"
  value       = docker_service.this.id
}

output "this" {
  value = docker_service.this
}

