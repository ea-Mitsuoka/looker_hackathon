view: bloomington_civil_city_2016 {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.bloomington_civil_city_2016`
    ;;

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  dimension: textbox14 {
    type: string
    sql: ${TABLE}.Textbox14 ;;
  }

  dimension: textbox6 {
    type: string
    sql: ${TABLE}.Textbox6 ;;
  }

  dimension: total_compensation {
    type: number
    sql: ${TABLE}.total_compensation ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name]
  }
}
