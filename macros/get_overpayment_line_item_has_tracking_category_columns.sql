{% macro get_overpayment_line_item_has_tracking_category_columns() %}

{% set columns = [
    {"name":"line_item_id", "datatype": dbt_utils.type_string() },
    {"name":"overpayment_id", "datatype": dbt_utils.type_string() },
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "option", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
