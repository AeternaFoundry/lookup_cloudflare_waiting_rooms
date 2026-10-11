data "cloudflare_waiting_rooms" "waiting_rooms_lookup" {
  for_each = var.waiting_rooms_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  zone_id    = each.value.zone_id
}

