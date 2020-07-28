view: case_demographics_sex {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.case_demographics_sex`
    ;;

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

  # 死亡者数
  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  # 死亡率
  dimension: deaths_percent {
    type: number
    sql: ${TABLE}.deaths_percent ;;
  }

  # 性別
  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  # 総陽生率2
  dimension: totalpositive2 {
    type: number
    sql: ${TABLE}.totalpositive2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
