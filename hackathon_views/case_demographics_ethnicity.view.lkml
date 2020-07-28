view: case_demographics_ethnicity {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.case_demographics_ethnicity`
    ;;

  dimension: case_percentage {
    type: number
    sql: ${TABLE}.case_percentage ;;
  }

  dimension: cases {
    type: number
    sql: ${TABLE}.cases ;;
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

  # 死亡率
  dimension: death_percentage {
    type: number
    sql: ${TABLE}.death_percentage ;;
  }

  # 死亡者数
  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  # 人口比率
  dimension: percent_ca_population {
    type: number
    sql: ${TABLE}.percent_ca_population ;;
  }

  # 人種民族
  dimension: race_ethnicity {
    type: string
    sql: ${TABLE}.race_ethnicity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
