resource "oci_apm_synthetics_monitor" "apm_synthetics_monitors" {
  for_each = var.apm_synthetics_monitors

  apm_domain_id              = each.value.apm_domain_id
  display_name               = each.value.display_name
  monitor_type               = each.value.monitor_type
  repeat_interval_in_seconds = each.value.repeat_interval_in_seconds
  batch_interval_in_seconds  = each.value.batch_interval_in_seconds
  defined_tags               = each.value.defined_tags
  freeform_tags              = each.value.freeform_tags
  is_ipv6                    = each.value.is_ipv6
  is_run_now                 = each.value.is_run_now
  is_run_once                = each.value.is_run_once
  scheduling_policy          = each.value.scheduling_policy
  script_id                  = each.value.script_id
  script_name                = each.value.script_name
  status                     = each.value.status
  target                     = each.value.target
  timeout_in_seconds         = each.value.timeout_in_seconds

  dynamic "vantage_points" {
    for_each = each.value.vantage_points
    content {
      display_name = vantage_points.value.display_name
      name         = vantage_points.value.name
    }
  }

  dynamic "availability_configuration" {
    for_each = each.value.availability_configuration != null ? [each.value.availability_configuration] : []
    content {
      max_allowed_failures_per_interval = availability_configuration.value.max_allowed_failures_per_interval
      min_allowed_runs_per_interval     = availability_configuration.value.min_allowed_runs_per_interval
    }
  }

  dynamic "configuration" {
    for_each = each.value.configuration != null ? [each.value.configuration] : []
    content {
      dynamic "client_certificate_details" {
        for_each = configuration.value.client_certificate_details != null ? [configuration.value.client_certificate_details] : []
        content {
          dynamic "client_certificate" {
            for_each = client_certificate_details.value.client_certificate != null ? [client_certificate_details.value.client_certificate] : []
            content {
              content   = client_certificate.value.content
              file_name = client_certificate.value.file_name
            }
          }
          dynamic "private_key" {
            for_each = client_certificate_details.value.private_key != null ? [client_certificate_details.value.private_key] : []
            content {
              content   = private_key.value.content
              file_name = private_key.value.file_name
            }
          }
        }
      }
      config_type       = configuration.value.config_type
      connection_string = configuration.value.connection_string
      dynamic "database_authentication_details" {
        for_each = configuration.value.database_authentication_details != null ? [configuration.value.database_authentication_details] : []
        content {
          dynamic "password" {
            for_each = database_authentication_details.value.password != null ? [database_authentication_details.value.password] : []
            content {
              password        = password.value.password
              password_type   = password.value.password_type
              vault_secret_id = password.value.vault_secret_id
            }
          }
          username = database_authentication_details.value.username
        }
      }
      database_connection_type = configuration.value.database_connection_type
      database_role            = configuration.value.database_role
      database_type            = configuration.value.database_type
      dynamic "database_wallet_details" {
        for_each = configuration.value.database_wallet_details != null ? [configuration.value.database_wallet_details] : []
        content {
          database_wallet = database_wallet_details.value.database_wallet
          service_name    = database_wallet_details.value.service_name
        }
      }
      dynamic "dns_configuration" {
        for_each = configuration.value.dns_configuration != null ? [configuration.value.dns_configuration] : []
        content {
          is_override_dns = dns_configuration.value.is_override_dns
          override_dns_ip = dns_configuration.value.override_dns_ip
        }
      }
      download_size_limit_in_bytes = configuration.value.download_size_limit_in_bytes
      dynamic "ftp_basic_authentication_details" {
        for_each = configuration.value.ftp_basic_authentication_details != null ? [configuration.value.ftp_basic_authentication_details] : []
        content {
          dynamic "password" {
            for_each = ftp_basic_authentication_details.value.password != null ? [ftp_basic_authentication_details.value.password] : []
            content {
              password        = password.value.password
              password_type   = password.value.password_type
              vault_secret_id = password.value.vault_secret_id
            }
          }
          username = ftp_basic_authentication_details.value.username
        }
      }
      ftp_protocol                      = configuration.value.ftp_protocol
      ftp_request_type                  = configuration.value.ftp_request_type
      is_active_mode                    = configuration.value.is_active_mode
      is_certificate_validation_enabled = configuration.value.is_certificate_validation_enabled
      is_default_snapshot_enabled       = configuration.value.is_default_snapshot_enabled
      is_failure_retried                = configuration.value.is_failure_retried
      is_query_recursive                = configuration.value.is_query_recursive
      is_redirection_enabled            = configuration.value.is_redirection_enabled
      name_server                       = configuration.value.name_server
      dynamic "network_configuration" {
        for_each = configuration.value.network_configuration != null ? [configuration.value.network_configuration] : []
        content {
          number_of_hops    = network_configuration.value.number_of_hops
          probe_mode        = network_configuration.value.probe_mode
          probe_per_hop     = network_configuration.value.probe_per_hop
          protocol          = network_configuration.value.protocol
          transmission_rate = network_configuration.value.transmission_rate
        }
      }
      protocol    = configuration.value.protocol
      query       = configuration.value.query
      record_type = configuration.value.record_type
      dynamic "req_authentication_details" {
        for_each = configuration.value.req_authentication_details != null ? [configuration.value.req_authentication_details] : []
        content {
          dynamic "auth_headers" {
            for_each = req_authentication_details.value.auth_headers != null ? req_authentication_details.value.auth_headers : []
            content {
              header_name  = auth_headers.value.header_name
              header_value = auth_headers.value.header_value
            }
          }
          auth_request_method    = req_authentication_details.value.auth_request_method
          auth_request_post_body = req_authentication_details.value.auth_request_post_body
          auth_token             = req_authentication_details.value.auth_token
          auth_url               = req_authentication_details.value.auth_url
          auth_user_name         = req_authentication_details.value.auth_user_name
          auth_user_password     = req_authentication_details.value.auth_user_password
          oauth_scheme           = req_authentication_details.value.oauth_scheme
        }
      }
      req_authentication_scheme = configuration.value.req_authentication_scheme
      dynamic "request_headers" {
        for_each = configuration.value.request_headers != null ? configuration.value.request_headers : []
        content {
          header_name  = request_headers.value.header_name
          header_value = request_headers.value.header_value
        }
      }
      request_method    = configuration.value.request_method
      request_post_body = configuration.value.request_post_body
      dynamic "request_query_params" {
        for_each = configuration.value.request_query_params != null ? configuration.value.request_query_params : []
        content {
          param_name  = request_query_params.value.param_name
          param_value = request_query_params.value.param_value
        }
      }
      upload_file_size_in_bytes = configuration.value.upload_file_size_in_bytes
      verify_response_codes     = configuration.value.verify_response_codes
      verify_response_content   = configuration.value.verify_response_content
      dynamic "verify_texts" {
        for_each = configuration.value.verify_texts != null ? configuration.value.verify_texts : []
        content {
          text = verify_texts.value.text
        }
      }
    }
  }

  dynamic "maintenance_window_schedule" {
    for_each = each.value.maintenance_window_schedule != null ? [each.value.maintenance_window_schedule] : []
    content {
      recurrence_type = maintenance_window_schedule.value.recurrence_type
      schedule_type   = maintenance_window_schedule.value.schedule_type
      time_ended      = maintenance_window_schedule.value.time_ended
      time_started    = maintenance_window_schedule.value.time_started
    }
  }

  dynamic "script_parameters" {
    for_each = each.value.script_parameters != null ? each.value.script_parameters : []
    content {
      param_name  = script_parameters.value.param_name
      param_value = script_parameters.value.param_value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

