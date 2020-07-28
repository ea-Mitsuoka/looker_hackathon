view: logistics_ppe {
  sql_table_name: `ea-datatechlab.mitsuoka_looker_training.logistics_ppe`
    ;;

  dimension_group: as_of {
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
    sql: ${TABLE}.as_of_date ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: product_family {
    type: string
    sql: ${TABLE}.product_family ;;
  }

  dimension: quantity_filled {
    type: number
    sql: ${TABLE}.quantity_filled ;;
  }

  dimension: shipping_zip_postal_code {
    type: string
    sql: ${TABLE}.shipping_zip_postal_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
