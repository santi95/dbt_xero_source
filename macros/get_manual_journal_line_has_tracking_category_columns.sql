{% macro get_manual_journal_line_has_tracking_category_columns() %}

{% set columns = [
    {"name": "manual_journal_id", "datatype": dbt_utils.type_string()},
    {"name": "manual_journal_line_id", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name":"_fivetran_synced", "datatype": dbt_utils.type_string() },
    {"name": "option", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
