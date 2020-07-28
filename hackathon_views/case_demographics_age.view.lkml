view: case_demographics_age {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.case_demographics_age`
    ;;

  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }

  dimension: ca_percent {
    type: number
    sql: ${TABLE}.ca_percent ;;
  }

  dimension: case_percent {
    type: number
    sql: ${TABLE}.case_percent ;;
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

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  dimension: deaths_percent {
    type: number
    sql: ${TABLE}.deaths_percent ;;
  }

  dimension: totalpositive {
    type: number
    sql: ${TABLE}.totalpositive ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
