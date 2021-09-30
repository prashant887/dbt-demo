with store_sales as (
    select * from {{ source('sales_data', 'customers') }}
),
final as (select * from store_sales)
select CUSTOMER_STATE,count(*) "CUST_COUNT" from final group by CUSTOMER_STATE
