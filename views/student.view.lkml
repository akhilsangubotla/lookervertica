view: student {
  sql_table_name: public.student ;;
  drill_fields: [student_id]

  dimension: student_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.student_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  measure: count {
    type: count
    drill_fields: [student_id]
  }
}
