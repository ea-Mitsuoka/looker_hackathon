include: "../partner_training_mitsuoka.model.lkml"

view: order_facts {
  derived_table: {
    explore_source: users {
      column: id {}
      column: total_sales { field: order_items.total_sales }
      column: order_count { field: order_items.order_count }
      derived_column: order_rev_rank {
        sql: rank() over(order by ${order_items.total_sales}) ;;
      }
    }
  }
  dimension: id {
    type: number
  }
  dimension: total_sales {
    label: "Order Items 総売上"
    type: number
  }
  dimension: order_count {
    label: "Order Items オーダー数"
    description: "ユニークなオーダー数"
    type: number
  }

  measure: average_total_sales {
    type: average
    sql: ${total_sales} ;;
  }

  measure: average_order_count {
    type: average
    sql:  ${order_count};;
  }
}
