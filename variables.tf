variable "apm_synthetics_monitors" {
  description = <<EOT
Map of apm_synthetics_monitors, attributes below
Required:
    - apm_domain_id
    - display_name
    - monitor_type
    - repeat_interval_in_seconds
    - vantage_points (block):
        - display_name (optional)
        - name (required)
Optional:
    - batch_interval_in_seconds
    - defined_tags
    - freeform_tags
    - is_ipv6
    - is_run_now
    - is_run_once
    - scheduling_policy
    - script_id
    - script_name
    - status
    - target
    - timeout_in_seconds
    - availability_configuration (block):
        - max_allowed_failures_per_interval (optional)
        - min_allowed_runs_per_interval (optional)
    - configuration (block):
        - client_certificate_details (optional, block):
            - client_certificate (optional, block):
                - content (optional)
                - file_name (optional)
            - private_key (optional, block):
                - content (optional)
                - file_name (optional)
        - config_type (optional)
        - connection_string (optional)
        - database_authentication_details (optional, block):
            - password (optional, block):
                - password (optional)
                - password_type (optional)
                - vault_secret_id (optional)
            - username (optional)
        - database_connection_type (optional)
        - database_role (optional)
        - database_type (optional)
        - database_wallet_details (optional, block):
            - database_wallet (optional)
            - service_name (optional)
        - dns_configuration (optional, block):
            - is_override_dns (optional)
            - override_dns_ip (optional)
        - download_size_limit_in_bytes (optional)
        - ftp_basic_authentication_details (optional, block):
            - password (optional, block):
                - password (optional)
                - password_type (optional)
                - vault_secret_id (optional)
            - username (optional)
        - ftp_protocol (optional)
        - ftp_request_type (optional)
        - is_active_mode (optional)
        - is_certificate_validation_enabled (optional)
        - is_default_snapshot_enabled (optional)
        - is_failure_retried (optional)
        - is_query_recursive (optional)
        - is_redirection_enabled (optional)
        - name_server (optional)
        - network_configuration (optional, block):
            - number_of_hops (optional)
            - probe_mode (optional)
            - probe_per_hop (optional)
            - protocol (optional)
            - transmission_rate (optional)
        - protocol (optional)
        - query (optional)
        - record_type (optional)
        - req_authentication_details (optional, block):
            - auth_headers (optional, block):
                - header_name (optional)
                - header_value (optional)
            - auth_request_method (optional)
            - auth_request_post_body (optional)
            - auth_token (optional)
            - auth_url (optional)
            - auth_user_name (optional)
            - auth_user_password (optional)
            - oauth_scheme (optional)
        - req_authentication_scheme (optional)
        - request_headers (optional, block):
            - header_name (optional)
            - header_value (optional)
        - request_method (optional)
        - request_post_body (optional)
        - request_query_params (optional, block):
            - param_name (optional)
            - param_value (optional)
        - upload_file_size_in_bytes (optional)
        - verify_response_codes (optional)
        - verify_response_content (optional)
        - verify_texts (optional, block):
            - text (optional)
    - maintenance_window_schedule (block):
        - recurrence_type (optional)
        - schedule_type (optional)
        - time_ended (optional)
        - time_started (optional)
    - script_parameters (block):
        - param_name (required)
        - param_value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    apm_domain_id              = string
    display_name               = string
    monitor_type               = string
    repeat_interval_in_seconds = number
    batch_interval_in_seconds  = optional(number)
    defined_tags               = optional(map(string))
    freeform_tags              = optional(map(string))
    is_ipv6                    = optional(bool)
    is_run_now                 = optional(bool)
    is_run_once                = optional(bool)
    scheduling_policy          = optional(string)
    script_id                  = optional(string)
    script_name                = optional(string)
    status                     = optional(string)
    target                     = optional(string)
    timeout_in_seconds         = optional(number)
    vantage_points = list(object({
      display_name = optional(string)
      name         = string
    }))
    availability_configuration = optional(object({
      max_allowed_failures_per_interval = optional(number)
      min_allowed_runs_per_interval     = optional(number)
    }))
    configuration = optional(object({
      client_certificate_details = optional(object({
        client_certificate = optional(object({
          content   = optional(string)
          file_name = optional(string)
        }))
        private_key = optional(object({
          content   = optional(string)
          file_name = optional(string)
        }))
      }))
      config_type       = optional(string)
      connection_string = optional(string)
      database_authentication_details = optional(object({
        password = optional(object({
          password        = optional(string)
          password_type   = optional(string)
          vault_secret_id = optional(string)
        }))
        username = optional(string)
      }))
      database_connection_type = optional(string)
      database_role            = optional(string)
      database_type            = optional(string)
      database_wallet_details = optional(object({
        database_wallet = optional(string)
        service_name    = optional(string)
      }))
      dns_configuration = optional(object({
        is_override_dns = optional(bool)
        override_dns_ip = optional(string)
      }))
      download_size_limit_in_bytes = optional(number)
      ftp_basic_authentication_details = optional(object({
        password = optional(object({
          password        = optional(string)
          password_type   = optional(string)
          vault_secret_id = optional(string)
        }))
        username = optional(string)
      }))
      ftp_protocol                      = optional(string)
      ftp_request_type                  = optional(string)
      is_active_mode                    = optional(bool)
      is_certificate_validation_enabled = optional(bool)
      is_default_snapshot_enabled       = optional(bool)
      is_failure_retried                = optional(bool)
      is_query_recursive                = optional(bool)
      is_redirection_enabled            = optional(bool)
      name_server                       = optional(string)
      network_configuration = optional(object({
        number_of_hops    = optional(number)
        probe_mode        = optional(string)
        probe_per_hop     = optional(number)
        protocol          = optional(string)
        transmission_rate = optional(number)
      }))
      protocol    = optional(string)
      query       = optional(string)
      record_type = optional(string)
      req_authentication_details = optional(object({
        auth_headers = optional(list(object({
          header_name  = optional(string)
          header_value = optional(string)
        })))
        auth_request_method    = optional(string)
        auth_request_post_body = optional(string)
        auth_token             = optional(string)
        auth_url               = optional(string)
        auth_user_name         = optional(string)
        auth_user_password     = optional(string)
        oauth_scheme           = optional(string)
      }))
      req_authentication_scheme = optional(string)
      request_headers = optional(list(object({
        header_name  = optional(string)
        header_value = optional(string)
      })))
      request_method    = optional(string)
      request_post_body = optional(string)
      request_query_params = optional(list(object({
        param_name  = optional(string)
        param_value = optional(string)
      })))
      upload_file_size_in_bytes = optional(number)
      verify_response_codes     = optional(list(string))
      verify_response_content   = optional(string)
      verify_texts = optional(list(object({
        text = optional(string)
      })))
    }))
    maintenance_window_schedule = optional(object({
      recurrence_type = optional(string)
      schedule_type   = optional(string)
      time_ended      = optional(string)
      time_started    = optional(string)
    }))
    script_parameters = optional(list(object({
      param_name  = string
      param_value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apm_synthetics_monitors : (
        length(v.vantage_points) >= 1 && length(v.vantage_points) <= 255
      )
    ])
    error_message = "Each vantage_points list must contain between 1 and 255 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.apm_synthetics_monitors : (
        v.configuration == null || (v.configuration.config_type == null || (contains([for v in ["BROWSER_CONFIG", "DNSSEC_CONFIG", "DNS_SERVER_CONFIG", "DNS_TRACE_CONFIG", "FTP_CONFIG", "NETWORK_CONFIG", "REST_CONFIG", "SCRIPTED_BROWSER_CONFIG", "SCRIPTED_REST_CONFIG", "SQL_CONFIG"] : lower(v)], lower(v.configuration.config_type))))
      )
    ])
    error_message = "must be one of: \"BROWSER_CONFIG\", \"DNSSEC_CONFIG\", \"DNS_SERVER_CONFIG\", \"DNS_TRACE_CONFIG\", \"FTP_CONFIG\", \"NETWORK_CONFIG\", \"REST_CONFIG\", \"SCRIPTED_BROWSER_CONFIG\", \"SCRIPTED_REST_CONFIG\", \"SQL_CONFIG\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apm_synthetics_monitors : (
        v.configuration == null || (v.configuration.database_authentication_details == null || (v.configuration.database_authentication_details.password == null || (v.configuration.database_authentication_details.password.password_type == null || (contains([for v in ["IN_TEXT", "VAULT_SECRET_ID"] : lower(v)], lower(v.configuration.database_authentication_details.password.password_type))))))
      )
    ])
    error_message = "must be one of: \"IN_TEXT\", \"VAULT_SECRET_ID\""
  }
  validation {
    condition = alltrue([
      for k, v in var.apm_synthetics_monitors : (
        v.configuration == null || (v.configuration.ftp_basic_authentication_details == null || (v.configuration.ftp_basic_authentication_details.password == null || (v.configuration.ftp_basic_authentication_details.password.password_type == null || (contains([for v in ["IN_TEXT", "VAULT_SECRET_ID"] : lower(v)], lower(v.configuration.ftp_basic_authentication_details.password.password_type))))))
      )
    ])
    error_message = "must be one of: \"IN_TEXT\", \"VAULT_SECRET_ID\""
  }
}

