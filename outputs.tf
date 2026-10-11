output "waiting_rooms_lookup_account_id" {
  description = "Map of account_id values across all waiting_rooms_lookup, keyed the same as var.waiting_rooms_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_waiting_rooms.waiting_rooms_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "waiting_rooms_lookup_max_items" {
  description = "Map of max_items values across all waiting_rooms_lookup, keyed the same as var.waiting_rooms_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_waiting_rooms.waiting_rooms_lookup : k => v.max_items if v.max_items != null }
}
output "waiting_rooms_lookup_result" {
  description = "Map of result values across all waiting_rooms_lookup, keyed the same as var.waiting_rooms_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_waiting_rooms.waiting_rooms_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "waiting_rooms_lookup_zone_id" {
  description = "Map of zone_id values across all waiting_rooms_lookup, keyed the same as var.waiting_rooms_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_waiting_rooms.waiting_rooms_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

