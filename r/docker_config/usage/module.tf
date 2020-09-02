module "docker_config" {
  source = "./modules/docker/r/docker_config"

  # data - (required) is a type of string
  data = null
  # name - (required) is a type of string
  name = null
}
