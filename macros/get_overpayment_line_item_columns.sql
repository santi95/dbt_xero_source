{% macro get_overpayment_line_item_columns() %}

{% set columns = [
    {"name":"line_item_id", "datatype": dbt_utils.type_string() },
    {"name":"overpayment_id", "datatype": dbt_utils.type_string() },
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_code", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "discount_entered_as_percent", "datatype": "boolean"},
    {"name": "item_code", "datatype": dbt_utils.type_string()},
    {"name": "line_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "quantity", "datatype": dbt_utils.type_numeric()},
    {"name": "tax_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "tax_type", "datatype": dbt_utils.type_string()},
    {"name": "unit_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "validation_errors", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
