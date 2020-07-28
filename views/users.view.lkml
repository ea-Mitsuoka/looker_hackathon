view: users {
  sql_table_name: "PUBLIC"."USERS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: age_tier {
    type: tier
    tiers: [18, 25, 35, 45, 55, 65, 75, 90]
    sql: ${age} ;;
    style: integer
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
    link: {
      label: "Link To An Explore"
      url: "/explore/eagencypartner_training_mitsuoka/users?fields=view.field_1,view.field_2,&f[view.filter_1]={{ value }}"
      icon_url: "https://looker.com/favicon.ico" }

  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
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
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: email {
    required_access_grants: [is_pii_viewer]
    type: string
    sql: ${TABLE}."EMAIL" ;;
    link: {
      label: "Category Detail Dashboard"
      url: "/dashboards/1813?Email={{value}}" }
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: city_state {
    type: string
    sql: ${city} || ‘, ‘ || ${state}."CITY_STATE" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."TRAFFIC_SOURCE" ;;
    link: {
      label: "Drill Down to See Customers"
      url: "/explore/eagencypartner_training_mitsuoka/users?fields=users.id,users.first_name,users.last_name&f[use rs.traffic_source]={{ _filters['users.traffic_source'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }

  dimension: is_email_source {
    type: yesno
    sql: ${traffic_source} = ‘Email’."IS_EMAIL_SOURCE" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }
}
