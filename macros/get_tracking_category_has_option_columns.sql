{% macro get_tracking_category_has_option_columns() %}

{% set columns = [
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "tracking_option_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
