view: hospitals_by_county {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.hospitals_by_county`
    ;;

  dimension: all_hospital_beds {
    type: number
    sql: ${TABLE}.all_hospital_beds ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: hospitalized_covid_confirmed_patients {
    type: number
    sql: ${TABLE}.hospitalized_covid_confirmed_patients ;;
  }

  dimension: hospitalized_covid_patients {
    type: number
    sql: ${TABLE}.hospitalized_covid_patients ;;
  }

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
