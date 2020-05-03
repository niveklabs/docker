module "docker_network" {
  source = "./modules/docker/r/docker_network"

  attachable      = null
  check_duplicate = null
  driver          = null
  ingress         = null
  internal        = null
  ipam_driver     = null
  ipv6            = null
  name            = null
  options         = {}

  ipam_config = [{
    aux_address = {}
    gateway     = null
    ip_range    = null
    subnet      = null
  }]

  labels = [{
    label = null
    value = null
  }]
}
