
with base as (

    select * 
    from {{ ref('stg_xero__payment_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__payment_tmp')),
                staging_columns=get_payment_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        payment_id,
        currency_rate,
        invoice_id,
        date,
        status,
        amount,
        account_id,
        credit_note_id,
        bank_amount

        {{ fivetran_utils.source_relation() }}

    from fields
)

select * from final