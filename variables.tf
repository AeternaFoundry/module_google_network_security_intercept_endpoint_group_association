variable "network_security_intercept_endpoint_group_associations" {
  description = <<EOT
Map of network_security_intercept_endpoint_group_associations, attributes below
Required:
    - intercept_endpoint_group
    - location
    - network
Optional:
    - deletion_policy
    - intercept_endpoint_group_association_id
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    intercept_endpoint_group                = string
    location                                = string
    network                                 = string
    deletion_policy                         = optional(string)
    intercept_endpoint_group_association_id = optional(string)
    labels                                  = optional(map(string))
    project                                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

