module "docker_network" {
  source = "./modules/docker/r/docker_network"

  # attachable - (optional) is a type of bool
  attachable = null
  # check_duplicate - (optional) is a type of bool
  check_duplicate = null
  # driver - (optional) is a type of string
  driver = null
  # ingress - (optional) is a type of bool
  ingress = null
  # internal - (optional) is a type of bool
  internal = null
  # ipam_driver - (optional) is a type of string
  ipam_driver = null
  # ipv6 - (optional) is a type of bool
  ipv6 = null
  # name - (required) is a type of string
  name = null
  # options - (optional) is a type of map of string
  options = {}

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
