
with base as (

    select * 
    from {{ ref('stg_xero__tracking_category_option_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__tracking_category_option_tmp')),
                staging_columns=get_tracking_category_option_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        tracking_option_id,
        is_active,
        is_archived,
        is_deleted,
        name,
        status


        {{ fivetran_utils.source_relation() }}
        
    from fields
)

select * from final
