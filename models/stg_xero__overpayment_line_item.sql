{{ config(enabled=var('xero__using_overpayment', True)) }}

with base as (

    select * 
    from {{ ref('stg_xero__overpayment_line_item_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__overpayment_line_item_tmp')),
                staging_columns=get_overpayment_line_item_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        line_item_id,
        overpayment_id,
        account_code,
        description,
        discount_entered_as_percent,
        item_code,
        line_amount,
        quantity,
        tax_amount,
        tax_type,
        unit_amount

        {{ fivetran_utils.source_relation() }}

    from fields
)

select * from final