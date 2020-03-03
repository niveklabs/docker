output "id" {
  description = "returns a string"
  value       = docker_secret.this.id
}

output "this" {
  value = docker_secret.this
}

