
with base as (

    select * 
    from {{ ref('stg_xero__manual_journal_line_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__manual_journal_line_tmp')),
                staging_columns=get_manual_journal_line_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        line,
        manual_journal_id,
        account_code,
        account_id,
        description,
        is_blank,
        line_amount,
        tax_amount,
        tax_type

        {{ fivetran_utils.source_relation() }}
        
    from fields
)

select * from final
