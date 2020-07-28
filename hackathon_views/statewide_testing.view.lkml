view: statewide_testing {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.statewide_testing`
    ;;

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

  dimension: tested {
    type: number
    sql: ${TABLE}.tested ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
