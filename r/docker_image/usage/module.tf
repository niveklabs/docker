module "docker_image" {
  source = "./docker/r/docker_image"

  keep_locally  = null
  name          = null
  pull_trigger  = null
  pull_triggers = []
}
