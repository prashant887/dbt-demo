with store_sales as (
    select * from {{ source('sales_data', 'customers') }}
),
final as (select * from store_sales)
select * from final
