with source_store_data as (
    select * from {{ source('sales_data', 'store_sales') }}
)

select * from source_store_data