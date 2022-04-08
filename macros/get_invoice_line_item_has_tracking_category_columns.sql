{% macro get_invoice_line_item_has_tracking_category_columns() %}

{% set columns = [
    {"name": "invoice_id", "datatype": dbt_utils.type_string()},
    {"name": "line_item_id", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "option", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
