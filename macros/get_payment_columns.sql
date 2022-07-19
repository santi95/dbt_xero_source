{% macro get_payment_columns() %}

{% set columns = [
    { "name":"payment_id", "datatype": dbt_utils.type_float() },
    { "name":"_fivetran_synced", "datatype": dbt_utils.type_string() },
    { "name":"account_id", "datatype": dbt_utils.type_string() },
    { "name":"amount", "datatype": dbt_utils.type_float() },
    { "name":"bank_amount", "datatype": dbt_utils.type_float() },
    { "name":"batch_payment_date", "datatype": dbt_utils.type_timestamp() },
    { "name":"batch_payment_id", "datatype": dbt_utils.type_string() },
    { "name":"batch_payment_is_reconciled", "datatype": dbt_utils.type_string() },
    { "name":"batch_payment_status", "datatype": dbt_utils.type_string() },
    { "name":"batch_payment_total_amount", "datatype": dbt_utils.type_float() },
    { "name":"batch_payment_type", "datatype": dbt_utils.type_string() },
    { "name":"batch_payment_updated_date_utc", "datatype": dbt_utils.type_timestamp() },
    { "name":"credit_note_id", "datatype": dbt_utils.type_float() },
    { "name":"currency_rate", "datatype": dbt_utils.type_float() },
    { "name":"date", "datatype": dbt_utils.type_string() },
    { "name":"expense_claim_id", "datatype": dbt_utils.type_string() },
    { "name":"has_account", "datatype": dbt_utils.type_string() },
    { "name":"has_validation_errors", "datatype": dbt_utils.type_string() },
    { "name":"invoice_id", "datatype": dbt_utils.type_float() },
    { "name":"is_reconciled", "datatype": dbt_utils.type_string() },
    { "name":"overpayment_id", "datatype": dbt_utils.type_string() },
    { "name":"payment_type", "datatype": dbt_utils.type_string() },
    { "name":"prepayment_id", "datatype": dbt_utils.type_string() },
    { "name":"reference", "datatype": dbt_utils.type_string() },
    { "name":"status", "datatype": dbt_utils.type_string() },
    { "name":"updated_date_utc", "datatype": dbt_utils.type_timestamp() }
] %}

{{ return(columns) }}

{% endmacro %}


