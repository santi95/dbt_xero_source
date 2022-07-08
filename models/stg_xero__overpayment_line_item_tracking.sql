{{ config(enabled=var('xero__using_overpayment', True)) }}

with base as (

    select * 
    from {{ ref('stg_xero__overpayment_line_item_tracking_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__overpayment_line_item_tracking_tmp')),
                staging_columns=get_overpayment_line_item_has_tracking_category_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        line_item_id,
        overpayment_id,
        tracking_category_id,
        option

        {{ fivetran_utils.source_relation() }}

    from fields
)

select * from final