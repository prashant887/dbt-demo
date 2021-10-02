{{ config(materialized='view') }}
select b.CUST_NAME,a.CUSTOMER_ZIPCODE,b.ORD_COUNT ,'{{ var("country") }}' as CNTRY
from {{ source('dims_data', 'customers') }} a,{{ ref('orders_count_by_cust') }} b
where b.CUST_NAME=a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by b.ORD_COUNT