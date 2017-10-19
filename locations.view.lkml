view: locations {
  sql_table_name: review_rocket.locations ;;

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

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address_obj {
    type: string
    sql: ${TABLE}.address_obj ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: client_success_id {
    type: number
    sql: ${TABLE}.client_success_id ;;
  }

  dimension_group: competitive_enabled {
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
    sql: ${TABLE}.competitive_enabled_at ;;
  }

  dimension: crawlers_enabled {
    type: yesno
    sql: ${TABLE}.crawlers_enabled ;;
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

  dimension: custom_review_url {
    type: string
    sql: ${TABLE}.custom_review_url ;;
  }

  dimension: custom_site_order_enabled {
    type: yesno
    sql: ${TABLE}.custom_site_order_enabled ;;
  }

  dimension: email_invite_templates {
    type: string
    sql: ${TABLE}.email_invite_templates ;;
  }

  dimension_group: facebook_api_connected {
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
    sql: ${TABLE}.facebook_api_connected_at ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}.facebook_id ;;
  }

  dimension_group: gmb_enabled {
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
    sql: ${TABLE}.gmb_enabled_at ;;
  }

  dimension_group: gmb_feature_flag {
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
    sql: ${TABLE}.gmb_feature_flag ;;
  }

  dimension: google_api_place_id {
    type: string
    sql: ${TABLE}.google_api_place_id ;;
  }

  dimension: google_html_place_id {
    type: string
    sql: ${TABLE}.google_html_place_id ;;
  }

  dimension: google_id {
    type: string
    sql: ${TABLE}.google_id ;;
  }

  dimension: google_lrd_id {
    type: string
    sql: ${TABLE}.google_lrd_id ;;
  }

  dimension_group: google_widget_enabled {
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
    sql: ${TABLE}.google_widget_enabled_at ;;
  }

  dimension_group: importer_enabled {
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
    sql: ${TABLE}.importer_enabled_at ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension_group: insights_enabled {
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
    sql: ${TABLE}.insights_enabled_at ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension_group: messenger_cards_enabled {
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
    sql: ${TABLE}.messenger_cards_enabled_at ;;
  }

  dimension_group: messenger_enabled {
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
    sql: ${TABLE}.messenger_enabled_at ;;
  }

  dimension: mms_custom {
    type: string
    sql: ${TABLE}.mms_custom ;;
  }

  dimension: mms_enabled {
    type: yesno
    sql: ${TABLE}.mms_enabled ;;
  }

  dimension: mms_image {
    type: string
    sql: ${TABLE}.mms_image ;;
  }

  dimension: monthly_review_quota {
    type: number
    sql: ${TABLE}.monthly_review_quota ;;
  }

  dimension_group: multi_user_mode_enabled {
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
    sql: ${TABLE}.multi_user_mode_enabled_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: no_resend_interval_days {
    type: number
    sql: ${TABLE}.no_resend_interval_days ;;
  }

  dimension: nps_mix_pct {
    type: number
    sql: ${TABLE}.nps_mix_pct ;;
  }

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: podium_number {
    type: string
    sql: ${TABLE}.podium_number ;;
  }

  dimension: quickbooks_state {
    type: string
    sql: ${TABLE}.quickbooks_state ;;
  }

  dimension: ratings_by_site {
    type: string
    sql: ${TABLE}.ratings_by_site ;;
  }

  dimension: receive_reminder {
    type: yesno
    sql: ${TABLE}.receive_reminder ;;
  }

  dimension: reporting_export_enabled {
    type: yesno
    sql: ${TABLE}.reporting_export_enabled ;;
  }

  dimension_group: retail_mode_enabled {
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
    sql: ${TABLE}.retail_mode_enabled_at ;;
  }

  dimension: review_iframe_id {
    type: string
    sql: ${TABLE}.review_iframe_id ;;
  }

  dimension: review_invitations_count {
    type: number
    sql: ${TABLE}.review_invitations_count ;;
  }

  dimension: review_trackers_id {
    type: number
    sql: ${TABLE}.review_trackers_id ;;
  }

  dimension: site_order_preference {
    type: string
    sql: ${TABLE}.site_order_preference ;;
  }

  dimension_group: skip_recommend_gate {
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
    sql: ${TABLE}.skip_recommend_gate ;;
  }

  dimension: sms_content {
    type: string
    sql: ${TABLE}.sms_content ;;
  }

  dimension: sms_content_fallback {
    type: string
    sql: ${TABLE}.sms_content_fallback ;;
  }

  dimension: spanish_enabled {
    type: yesno
    sql: ${TABLE}.spanish_enabled ;;
  }

  dimension: success_metrics {
    type: string
    sql: ${TABLE}.success_metrics ;;
  }

  dimension_group: team_members_all_conversations_enabled {
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
    sql: ${TABLE}.team_members_all_conversations_enabled_at ;;
  }

  dimension: total_reviews_by_site {
    type: string
    sql: ${TABLE}.total_reviews_by_site ;;
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

  dimension: verified {
    type: yesno
    sql: ${TABLE}.verified ;;
  }

  dimension: weekly_bulk_invitation_limit {
    type: number
    sql: ${TABLE}.weekly_bulk_invitation_limit ;;
  }

  dimension: yelp_biz_id {
    type: string
    sql: ${TABLE}.yelp_biz_id ;;
  }

  dimension_group: yelp_enabled {
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
    sql: ${TABLE}.yelp_enabled_at ;;
  }

  dimension: yelp_id {
    type: string
    sql: ${TABLE}.yelp_id ;;
  }

  dimension_group: yelp_public_api_enabled {
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
    sql: ${TABLE}.yelp_public_api_enabled_at ;;
  }

  dimension_group: yelp_subscribed {
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
    sql: ${TABLE}.yelp_subscribed_at ;;
  }

  dimension_group: zoe_enabled {
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
    sql: ${TABLE}.zoe_enabled_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      organizations.id,
      organizations.business_name,
      review_invitations.count,
      reviews.count,
      users.count
    ]
  }
}
