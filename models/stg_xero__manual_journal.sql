
with base as (

    select * 
    from {{ ref('stg_xero__manual_journal_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__manual_journal_tmp')),
                staging_columns=get_manual_journal_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        manual_journal_id,
        date,
        line_amount_types,
        narration, 
        status, 
        show_on_cash_basis_reports

        {{ fivetran_utils.source_relation() }}
        
    from fields
)

select * from final
