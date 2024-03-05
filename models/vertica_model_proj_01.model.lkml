connection: "looker_vertica_01"

# include all the views
include: "/views/**/*.view"

datagroup: vertica_model_proj_01_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vertica_model_proj_01_default_datagroup

explore: customer_dimension {
  tags: ["Customer","Dimension"]
}

explore: date_dimension {}

explore: employee_dimension {}

explore: inventory_fact {}

explore: product_dimension {}

explore: promotion_dimension {}

explore: shipping_dimension {}

explore: student {}

explore: tabwnulls {}

explore: temp_t0 {}

explore: vendor_dimension {}

explore: warehouse_dimension {}
