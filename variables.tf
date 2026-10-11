variable "waiting_rooms_lookup" {
  description = <<EOT
Map of waiting_rooms_lookup, attributes below
Optional:
    - account_id
    - max_items
    - zone_id
EOT

  type = map(object({
    account_id = optional(string)
    max_items  = optional(number)
    zone_id    = optional(string)
  }))
}

