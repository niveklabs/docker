module "docker_volume" {
  source = "./modules/docker/r/docker_volume"

  driver      = null
  driver_opts = {}
  name        = null

  labels = [{
    label = null
    value = null
  }]
}
