{% macro get_tracking_category_columns() %}

{% set columns = [
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()}
    
] %}

{{ return(columns) }}

{% endmacro %}
