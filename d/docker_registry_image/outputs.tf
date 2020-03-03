output "id" {
  description = "returns a string"
  value       = data.docker_registry_image.this.id
}

output "sha256_digest" {
  description = "returns a string"
  value       = data.docker_registry_image.this.sha256_digest
}

output "this" {
  value = docker_registry_image.this
}

