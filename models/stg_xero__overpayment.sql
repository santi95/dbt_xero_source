{{ config(enabled=var('xero__using_overpayment', True)) }}

with base as (

    select * 
    from {{ ref('stg_xero__overpayment_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__overpayment_tmp')),
                staging_columns=get_overpayment_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        overpayment_id,
        contact_id,
        currency_code,
        currency_rate,
        date,
        status,
        line_amount_types, 
        sub_total,
        total,
        total_tax

        {{ fivetran_utils.source_relation() }}

    from fields
)

select * from final