{% macro get_bank_transaction_has_tracking_category_columns() %}

{% set columns = [
    {"name": "bank_transaction_id", "datatype": dbt_utils.type_string()},
    {"name": "line_item_id", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_string()},
    {"name": "option", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
