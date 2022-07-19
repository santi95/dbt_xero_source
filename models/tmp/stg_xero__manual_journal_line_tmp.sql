{{ config(enabled=var('xero__using_manual_journal', True)) }}

{{
    fivetran_utils.union_data(
        table_identifier='manual_journal_line', 
        database_variable='xero_database', 
        schema_variable='xero_schema', 
        default_database=target.database,
        default_schema='xero',
        default_variable='manual_journal_line'
    )
}}