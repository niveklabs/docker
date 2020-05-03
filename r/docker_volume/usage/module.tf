module "docker_volume" {
  source = "./modules/docker/r/docker_volume"

  driver      = null
  driver_opts = {}
  labels      = {}
  name        = null
}
