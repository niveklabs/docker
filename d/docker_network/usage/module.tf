module "docker_network" {
  source = "./modules/docker/d/docker_network"

  name = null

  ipam_config = [{
    aux_address = {}
    gateway     = null
    ip_range    = null
    subnet      = null
  }]
}
