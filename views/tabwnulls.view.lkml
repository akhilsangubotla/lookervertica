view: tabwnulls {
  sql_table_name: public.tabwnulls ;;

  dimension: col1 {
    type: number
    sql: ${TABLE}.col1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
