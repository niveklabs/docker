module "docker_volume" {
  source = "./modules/docker/r/docker_volume"

  # driver - (optional) is a type of string
  driver = null
  # driver_opts - (optional) is a type of map of string
  driver_opts = {}
  # name - (optional) is a type of string
  name = null

  labels = [{
    label = null
    value = null
  }]
}
