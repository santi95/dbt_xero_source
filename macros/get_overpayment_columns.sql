{% macro get_overpayment_columns() %}

{% set columns = [
    {"name":"overpayment_id", "datatype": dbt_utils.type_string() },
    {"name":"contact_id", "datatype": dbt_utils.type_string() },
    {"name":"currency_code", "datatype": dbt_utils.type_string() },
    {"name":"currency_rate", "datatype": dbt_utils.type_float() },
    {"name":"date", "datatype": "date"  },
    {"name":"status", "datatype": dbt_utils.type_string() },
    {"name":"line_amount_types", "datatype": dbt_utils.type_string() },
    {"name":"sub_total", "datatype": dbt_utils.type_float() },
    {"name":"total", "datatype": dbt_utils.type_float() },
    {"name":"total_tax", "datatype": dbt_utils.type_float() }
] %}

{{ return(columns) }}

{% endmacro %}
