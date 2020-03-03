output "id" {
  description = "returns a string"
  value       = docker_image.this.id
}

output "latest" {
  description = "returns a string"
  value       = docker_image.this.latest
}

output "this" {
  value = docker_image.this
}

