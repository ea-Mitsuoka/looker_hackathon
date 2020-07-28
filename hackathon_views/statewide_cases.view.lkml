view: statewide_cases {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.statewide_cases`
    ;;

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

  # 新規感染者数
  dimension: newcountconfirmed {
    type: number
    sql: ${TABLE}.newcountconfirmed ;;
  }

  dimension: newcountdeaths {
    type: number
    sql: ${TABLE}.newcountdeaths ;;
  }

  dimension: totalcountconfirmed {
    type: number
    sql: ${TABLE}.totalcountconfirmed ;;
  }

  dimension: totalcountdeaths {
    type: number
    sql: ${TABLE}.totalcountdeaths ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
