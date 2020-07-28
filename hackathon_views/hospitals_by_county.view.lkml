view: hospitals_by_county {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.hospitals_by_county`
    ;;

  dimension: all_hospital_beds {
    type: number
    sql: ${TABLE}.all_hospital_beds ;;
  }

  # 郡
  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  # 病院別コロナ確定患者数
  dimension: hospitalized_covid_confirmed_patients {
    type: number
    sql: ${TABLE}.hospitalized_covid_confirmed_patients ;;
  }

  # 病院別コロナ患者数 (TODO 確定とどう違う？)
  dimension: hospitalized_covid_patients {
    type: number
    sql: ${TABLE}.hospitalized_covid_patients ;;
  }

  #
  dimension: hospitalized_suspected_covid_patients {
    type: number
    sql: ${TABLE}.hospitalized_suspected_covid_patients ;;
  }

  dimension: icu_available_beds {
    type: number
    sql: ${TABLE}.icu_available_beds ;;
  }

  dimension: icu_covid_confirmed_patients {
    type: number
    sql: ${TABLE}.icu_covid_confirmed_patients ;;
  }

  dimension: icu_suspected_covid_patients {
    type: number
    sql: ${TABLE}.icu_suspected_covid_patients ;;
  }

  dimension_group: todays {
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
    sql: ${TABLE}.todays_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
