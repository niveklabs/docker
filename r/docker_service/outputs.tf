output "id" {
  description = "returns a string"
  value       = docker_service.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = docker_service.this.labels
}

output "this" {
  value = docker_service.this
}

