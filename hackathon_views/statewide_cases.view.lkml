view: statewide_cases {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.statewide_cases`
    ;;

  # 郡・州
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

  # 新規死亡者数
  dimension: newcountdeaths {
    type: number
    sql: ${TABLE}.newcountdeaths ;;
  }

  # 総感染者数
  dimension: totalcountconfirmed {
    type: number
    sql: ${TABLE}.totalcountconfirmed ;;
  }

  # 総死亡者数
  dimension: totalcountdeaths {
    type: number
    sql: ${TABLE}.totalcountdeaths ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
