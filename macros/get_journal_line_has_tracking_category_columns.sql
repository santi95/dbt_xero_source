{% macro get_journal_line_has_tracking_category_columns() %}

{% set columns = [
    {"name": "journal_id", "datatype": dbt_utils.type_string()},
    {"name": "journal_line_id", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_id", "datatype": dbt_utils.type_string()},
    {"name": "option", "datatype": dbt_utils.type_string()},
    {"name": "tracking_category_option_id", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
