view: review_invitations {
  sql_table_name: review_rocket.review_invitations ;;

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

  dimension: api_client_id {
    type: number
    sql: ${TABLE}.api_client_id ;;
  }

  dimension_group: clicked {
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
    sql: ${TABLE}.clicked_at ;;
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

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: integration_id {
    type: number
    sql: ${TABLE}.integration_id ;;
  }

  dimension: invitation_count {
    type: number
    sql: ${TABLE}.invitation_count ;;
  }

  dimension: invitation_id {
    type: string
    sql: ${TABLE}.invitation_id ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: last_invitation_sent {
    type: yesno
    sql: ${TABLE}.last_invitation_sent ;;
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

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: message_sid {
    type: string
    sql: ${TABLE}.message_sid ;;
  }

  dimension: meta_data {
    type: string
    sql: ${TABLE}.meta_data ;;
  }

  dimension: mms_url {
    type: string
    sql: ${TABLE}.mms_url ;;
  }

  dimension: organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: originally_sent_as {
    type: string
    sql: ${TABLE}.originally_sent_as ;;
  }

  dimension: pending {
    type: yesno
    sql: ${TABLE}.pending ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: review_page_url {
    type: string
    sql: ${TABLE}.review_page_url ;;
  }

  dimension: review_page_url_expanded {
    type: string
    sql: ${TABLE}.review_page_url_expanded ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_at ;;
  }

  dimension: sent_externally {
    type: yesno
    sql: ${TABLE}.sent_externally ;;
  }

  dimension_group: sent_from_mobile_app {
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
    sql: ${TABLE}.sent_from_mobile_app_at ;;
  }

  dimension: skip_recommend_question {
    type: yesno
    sql: ${TABLE}.skip_recommend_question ;;
  }

  dimension: sms_text {
    type: string
    sql: ${TABLE}.sms_text ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  dimension: twilio_error_code {
    type: number
    sql: ${TABLE}.twilio_error_code ;;
  }

  dimension: twilio_message_status {
    type: string
    sql: ${TABLE}.twilio_message_status ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customer_name,
      users.id,
      users.username,
      users.last_name,
      users.first_name,
      organizations.id,
      organizations.business_name,
      locations.id,
      locations.name,
      reviews.count
    ]
  }
}
