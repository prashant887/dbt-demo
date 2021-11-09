

with store_sales as (
    select * from "postgres"."dims"."customers"
),
final as (select * from store_sales)
select CUSTOMER_STATE,count(*) as CUST_COUNT from final group by CUSTOMER_STATE