resource "google_network_security_intercept_endpoint_group_association" "network_security_intercept_endpoint_group_associations" {
  for_each = var.network_security_intercept_endpoint_group_associations

  intercept_endpoint_group                = each.value.intercept_endpoint_group
  location                                = each.value.location
  network                                 = each.value.network
  deletion_policy                         = each.value.deletion_policy
  intercept_endpoint_group_association_id = each.value.intercept_endpoint_group_association_id
  labels                                  = each.value.labels
  project                                 = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

