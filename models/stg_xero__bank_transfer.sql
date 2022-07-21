{{ config(enabled=var('xero__using_bank_transfer', False)) }}

with base as (

    select * 
    from {{ ref('stg_xero__bank_transfer_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__bank_transfer_tmp')),
                staging_columns=get_bank_transfer_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        bank_transfer_id,
        amount,
        currency_rate,
        date,
        from_bank_account_id,
        from_bank_transaction_id,
        has_attachments,
        to_bank_account_id,
        to_bank_transaction_id

        {{ fivetran_utils.source_relation() }}

    from fields
)

select * from final