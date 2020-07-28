view: bed_surge {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.bed_surge`
    ;;

  dimension: beds_in_warm_status {
    type: number
    sql: ${TABLE}.beds_in_warm_status ;;
  }

  dimension: beds_ready_to_accept_patients {
    type: number
    sql: ${TABLE}.beds_ready_to_accept_patients ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: patients_in_beds {
    type: number
    sql: ${TABLE}.patients_in_beds ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type_of_facility {
    type: string
    sql: ${TABLE}.type_of_facility ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
