{{ config(
    pre_hook=audits('POSTGRES_MODEL','STARTED','CUST_COUNT_BY_STATE'),
    post_hook=audits('POSTGRES_MODEL','ENDED','CUST_COUNT_BY_STATE')
) }}

with store_sales as (
    select * from {{ source('dims_data', 'customers') }}
),
final as (select * from store_sales)
select CUSTOMER_STATE,count(*) as CUST_COUNT from final group by CUSTOMER_STATE