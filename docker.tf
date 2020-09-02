provider "docker" {
  version = "2.7.2"

  # ca_material - (optional) is a type of string
  ca_material = null
  # cert_material - (optional) is a type of string
  cert_material = null
  # cert_path - (optional) is a type of string
  cert_path = null
  # host - (optional) is a type of string
  host = null
  # key_material - (optional) is a type of string
  key_material = null

  # NestingSet
  registry_auth {
    # address - (required) is a type of string
    address = null
    # config_file - (optional) is a type of string
    config_file = null
    # config_file_content - (optional) is a type of string
    config_file_content = null
    # password - (optional) is a type of string
    password = null
    # username - (optional) is a type of string
    username = null
  }
}
