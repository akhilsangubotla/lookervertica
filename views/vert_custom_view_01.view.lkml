view: vert_custom_view_01 {
  derived_table: {
    sql: SELECT
          employee_dimension.employee_age  AS "employee_dimension.employee_age",
          employee_dimension.employee_last_name  AS "employee_dimension.employee_last_name",
          employee_dimension.annual_salary  AS "employee_dimension.annual_salary"
      FROM public.employee_dimension  AS employee_dimension
      WHERE employee_dimension.employee_age > 15 AND employee_dimension.annual_salary > 79000 AND employee_dimension.annual_salary < 198000
      GROUP BY
          1,
          2,
          3
      ORDER BY
          1
      LIMIT 100
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: employee_dimension_employee_age {
    type: number
    sql: ${TABLE}."employee_dimension.employee_age" ;;
  }

  dimension: employee_dimension_employee_last_name {
    type: string
    sql: ${TABLE}."employee_dimension.employee_last_name" ;;
  }

  dimension: employee_dimension_annual_salary {
    type: number
    sql: ${TABLE}."employee_dimension.annual_salary" ;;
  }

  set: detail {
    fields: [employee_dimension_employee_age, employee_dimension_employee_last_name, employee_dimension_annual_salary]
  }
}
