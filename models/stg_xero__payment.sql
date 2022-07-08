
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
        account_id,
        currency_rate,
        date,
        status,
        amount,
        bank_amount,
        credit_note_id,
        batch_payment_id,
        expense_claim_id,
        invoice_id,
        overpayment_id,
        prepayment_id

        {{ fivetran_utils.source_relation() }}

    from fields
)

select * from final