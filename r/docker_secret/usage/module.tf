module "docker_secret" {
  source = "./modules/docker/r/docker_secret"

  # data - (required) is a type of string
  data = null
  # name - (required) is a type of string
  name = null

  labels = [{
    label = null
    value = null
  }]
}
