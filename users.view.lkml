view: users {
  sql_table_name: review_rocket.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _sdc_batched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: can_respond_to_reviews {
    type: yesno
    sql: ${TABLE}.can_respond_to_reviews ;;
  }

  dimension_group: confirmed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.confirmed_at ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: current_sign_in {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.current_sign_in_at ;;
  }

  dimension: current_sign_in_ip {
    type: string
    sql: ${TABLE}.current_sign_in_ip ;;
  }

  dimension: daily_review_digest {
    type: yesno
    sql: ${TABLE}.daily_review_digest ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: enterprise_reporting_enabled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.enterprise_reporting_enabled_at ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension_group: google_api_authenticated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.google_api_authenticated_at ;;
  }

  dimension_group: instant_review_notifications_enabled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.instant_review_notifications_enabled_at ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension_group: last_email {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_email_time ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_at ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension_group: last_sign_in {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_sign_in_at ;;
  }

  dimension: last_sign_in_ip {
    type: string
    sql: ${TABLE}.last_sign_in_ip ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: login_code {
    type: string
    sql: ${TABLE}.login_code ;;
  }

  dimension_group: login_code_refreshed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.login_code_refreshed_at ;;
  }

  dimension_group: messenger_notification_opted_out {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.messenger_notification_opted_out_at ;;
  }

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: password_digest {
    type: string
    sql: ${TABLE}.password_digest ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension_group: private_feedback_notification_enabled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.private_feedback_notification_enabled_at ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension_group: remember_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.remember_created_at ;;
  }

  dimension_group: reset_password_sent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.reset_password_sent_at ;;
  }

  dimension: reset_password_token {
    type: string
    sql: ${TABLE}.reset_password_token ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: sign_in_count {
    type: number
    sql: ${TABLE}.sign_in_count ;;
  }

  dimension_group: terms_last_accepted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.terms_last_accepted_at ;;
  }

  dimension: tokens {
    type: string
    sql: ${TABLE}.tokens ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  dimension: unique_sha1 {
    type: string
    sql: ${TABLE}.unique_sha1 ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: weekly_manager_email_enabled {
    type: yesno
    sql: ${TABLE}.weekly_manager_email_enabled ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      last_name,
      first_name,
      locations.id,
      locations.name,
      organizations.id,
      organizations.business_name,
      review_invitations.count
    ]
  }
}
