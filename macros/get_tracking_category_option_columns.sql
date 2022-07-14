{% macro get_tracking_category_option_columns() %}

{% set columns = [
    {"name": "tracking_option_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "has_validation_errors", "datatype": "boolean"},
    {"name": "is_active", "datatype": "boolean"},
    {"name": "is_archived", "datatype": "boolean"},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()}
    
] %}

{{ return(columns) }}

{% endmacro %}
