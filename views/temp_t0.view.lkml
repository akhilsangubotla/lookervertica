view: temp_t0 {
  sql_table_name: public.temp_t0 ;;

  dimension: assigned_roles {
    type: string
    sql: ${TABLE}.assigned_roles ;;
  }

  dimension: is_orphaned_from_ldap {
    type: yesno
    sql: ${TABLE}.is_orphaned_from_ldap ;;
  }

  dimension: ldap_dn {
    type: string
    sql: ${TABLE}.ldap_dn ;;
  }

  dimension: ldap_uri_hash {
    type: number
    sql: ${TABLE}.ldap_uri_hash ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
