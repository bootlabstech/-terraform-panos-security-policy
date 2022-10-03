resource "panos_security_policy" "security_policy" {
  rule {
    name                  = var.name
    type                  = var.type
    description           = var.description
    source_zones          = var.source_zones
    source_addresses      = var.source_addresses
    source_users          = var.source_users
    destination_zones     = var.destination_zones
    destination_addresses = var.destination_addresses
    applications          = var.applications
    services              = var.services
    categories            = var.categories
    action                = var.action
    log_start             = var.log_start
    log_end               = var.log_end
    group                 = var.group
    log_setting           = var.log_setting
  }
}