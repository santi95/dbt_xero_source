{{ config(enabled=var('xero__using_overpayment', True)) }}

{{
    fivetran_utils.union_data(
        table_identifier='overpayment_line_item_has_tracking_category', 
        database_variable='xero_database', 
        schema_variable='xero_schema', 
        default_database=target.database,
        default_schema='xero',
        default_variable='overpayment_line_item_has_tracking_category'
    )
}} 