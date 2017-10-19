view: organizations {
  sql_table_name: review_rocket.organizations ;;

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

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension_group: all_locations_mode_enabled {
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
    sql: ${TABLE}.all_locations_mode_enabled_at ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: bulk_invite_upload_enabled {
    type: yesno
    sql: ${TABLE}.bulk_invite_upload_enabled ;;
  }

  dimension: bulk_user_upload_enabled {
    type: yesno
    sql: ${TABLE}.bulk_user_upload_enabled ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.business_name ;;
  }

  dimension: business_name_slug {
    type: string
    sql: ${TABLE}.business_name_slug ;;
  }

  dimension: client_success_id {
    type: number
    sql: ${TABLE}.client_success_id ;;
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

  dimension_group: dash_refresh_enabled {
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
    sql: ${TABLE}.dash_refresh_enabled_at ;;
  }

  dimension: default_password {
    type: string
    sql: ${TABLE}.default_password ;;
  }

  dimension: direct_review {
    type: yesno
    sql: ${TABLE}.direct_review ;;
  }

  dimension_group: facebook_enabled {
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
    sql: ${TABLE}.facebook_enabled_at ;;
  }

  dimension: first_day_of_week {
    type: string
    sql: ${TABLE}.first_day_of_week ;;
  }

  dimension_group: instant_notifications_enabled {
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
    sql: ${TABLE}.instant_notifications_enabled_at ;;
  }

  dimension: invitation_csv_report_enabled {
    type: yesno
    sql: ${TABLE}.invitation_csv_report_enabled ;;
  }

  dimension_group: kafka_enabled {
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
    sql: ${TABLE}.kafka_enabled_at ;;
  }

  dimension: location_limit {
    type: number
    sql: ${TABLE}.location_limit ;;
  }

  dimension: locations_count {
    type: number
    sql: ${TABLE}.locations_count ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: monthly_organization_review_quota {
    type: number
    sql: ${TABLE}.monthly_organization_review_quota ;;
  }

  dimension_group: new_ui_enabled {
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
    sql: ${TABLE}.new_ui_enabled_at ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: review_invitations_count {
    type: number
    sql: ${TABLE}.review_invitations_count ;;
  }

  dimension: send_welcome_email {
    type: yesno
    sql: ${TABLE}.send_welcome_email ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  dimension: text_analytics_reporting_enabled {
    type: yesno
    sql: ${TABLE}.text_analytics_reporting_enabled ;;
  }

  dimension: thank_you_content {
    type: string
    sql: ${TABLE}.thank_you_content ;;
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

  dimension: use_org_name_in_cobra {
    type: yesno
    sql: ${TABLE}.use_org_name_in_cobra ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_organizations {
    type:  count_distinct
    sql: ${id} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      business_name,
      locations.count,
      review_invitations.count,
      reviews.count,
      segment_groups.count,
      users.count
    ]
  }
}
