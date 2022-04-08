{% macro get_credit_note_has_tracking_category_columns() %}

{% set columns = [
    {"name": "credit_note_id", "datatype": dbt_utils.type_string()},
    {"name": "line_itemindex", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_string()},
    {"name": "option", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_option_id", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
