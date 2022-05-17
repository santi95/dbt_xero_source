{% macro get_bank_transfers_columns() %}

{% set columns = [
    { "name": "bank_transfer_id", "datatype": dbt_utils.type_string() },
    { "name": "amount", "datatype": dbt_utils.type_float() },
    { "name": "created_date_utc", "datatype": dbt_utils.type_timestamp() },
    { "name": "created_date_utcstring", "datatype": dbt_utils.type_timestamp() },
    { "name": "currency_rate", "datatype": dbt_utils.type_float() },
    { "name": "date", "datatype": dbt_utils.type_timestamp() },
    { "name": "from_bank_account_id", "datatype": dbt_utils.type_string() },
    { "name": "from_bank_transaction_id", "datatype": dbt_utils.type_string() },
    { "name": "has_attachments", "datatype": dbt_utils.type_string() },
    { "name": "to_bank_account_id", "datatype": dbt_utils.type_string() },
    { "name": "to_bank_transaction_id", "datatype": dbt_utils.type_string() }
] %}

{{ return(columns) }}

{% endmacro %}
