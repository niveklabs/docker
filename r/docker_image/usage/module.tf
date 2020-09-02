module "docker_image" {
  source = "./modules/docker/r/docker_image"

  # keep_locally - (optional) is a type of bool
  keep_locally = null
  # name - (required) is a type of string
  name = null
  # pull_trigger - (optional) is a type of string
  pull_trigger = null
  # pull_triggers - (optional) is a type of set of string
  pull_triggers = []
}
