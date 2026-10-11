output "apm_synthetics_monitors_id" {
  description = "Map of id values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no id are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_synthetics_monitors_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no apm_domain_id are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_synthetics_monitors_availability_configuration" {
  description = "Map of availability_configuration values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no availability_configuration are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => one(v.availability_configuration) if v.availability_configuration != null && length(v.availability_configuration) > 0 }
}
output "apm_synthetics_monitors_batch_interval_in_seconds" {
  description = "Map of batch_interval_in_seconds values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no batch_interval_in_seconds are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.batch_interval_in_seconds if v.batch_interval_in_seconds != null }
}
output "apm_synthetics_monitors_configuration" {
  description = "Map of configuration values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no configuration are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
  sensitive   = true
}
output "apm_synthetics_monitors_content_type" {
  description = "Map of content_type values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no content_type are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "apm_synthetics_monitors_created_by" {
  description = "Map of created_by values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no created_by are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "apm_synthetics_monitors_defined_tags" {
  description = "Map of defined_tags values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apm_synthetics_monitors_display_name" {
  description = "Map of display_name values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no display_name are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apm_synthetics_monitors_freeform_tags" {
  description = "Map of freeform_tags values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apm_synthetics_monitors_is_ipv6" {
  description = "Map of is_ipv6 values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no is_ipv6 are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.is_ipv6 if v.is_ipv6 != null }
}
output "apm_synthetics_monitors_is_run_now" {
  description = "Map of is_run_now values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no is_run_now are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.is_run_now if v.is_run_now != null }
}
output "apm_synthetics_monitors_is_run_once" {
  description = "Map of is_run_once values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no is_run_once are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.is_run_once if v.is_run_once != null }
}
output "apm_synthetics_monitors_last_updated_by" {
  description = "Map of last_updated_by values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no last_updated_by are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.last_updated_by if v.last_updated_by != null && length(v.last_updated_by) > 0 }
}
output "apm_synthetics_monitors_maintenance_window_schedule" {
  description = "Map of maintenance_window_schedule values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no maintenance_window_schedule are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => one(v.maintenance_window_schedule) if v.maintenance_window_schedule != null && length(v.maintenance_window_schedule) > 0 }
}
output "apm_synthetics_monitors_monitor_type" {
  description = "Map of monitor_type values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no monitor_type are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.monitor_type if v.monitor_type != null && length(v.monitor_type) > 0 }
}
output "apm_synthetics_monitors_repeat_interval_in_seconds" {
  description = "Map of repeat_interval_in_seconds values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no repeat_interval_in_seconds are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.repeat_interval_in_seconds if v.repeat_interval_in_seconds != null }
}
output "apm_synthetics_monitors_scheduling_policy" {
  description = "Map of scheduling_policy values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no scheduling_policy are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.scheduling_policy if v.scheduling_policy != null && length(v.scheduling_policy) > 0 }
}
output "apm_synthetics_monitors_script_id" {
  description = "Map of script_id values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no script_id are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.script_id if v.script_id != null && length(v.script_id) > 0 }
}
output "apm_synthetics_monitors_script_name" {
  description = "Map of script_name values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no script_name are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.script_name if v.script_name != null && length(v.script_name) > 0 }
}
output "apm_synthetics_monitors_script_parameters" {
  description = "Map of script_parameters values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no script_parameters are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.script_parameters if v.script_parameters != null && length(v.script_parameters) > 0 }
}
output "apm_synthetics_monitors_status" {
  description = "Map of status values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no status are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.status if v.status != null && length(v.status) > 0 }
}
output "apm_synthetics_monitors_target" {
  description = "Map of target values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no target are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.target if v.target != null && length(v.target) > 0 }
}
output "apm_synthetics_monitors_time_created" {
  description = "Map of time_created values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no time_created are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "apm_synthetics_monitors_time_updated" {
  description = "Map of time_updated values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no time_updated are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "apm_synthetics_monitors_timeout_in_seconds" {
  description = "Map of timeout_in_seconds values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no timeout_in_seconds are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.timeout_in_seconds if v.timeout_in_seconds != null }
}
output "apm_synthetics_monitors_vantage_point_count" {
  description = "Map of vantage_point_count values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no vantage_point_count are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.vantage_point_count if v.vantage_point_count != null }
}
output "apm_synthetics_monitors_vantage_points" {
  description = "Map of vantage_points values across all apm_synthetics_monitors, keyed the same as var.apm_synthetics_monitors except keys with no vantage_points are omitted"
  value       = { for k, v in oci_apm_synthetics_monitor.apm_synthetics_monitors : k => v.vantage_points if v.vantage_points != null && length(v.vantage_points) > 0 }
}

