{{ config(materialized='view') }}
select b.CUST_NAME,a.CUSTOMER_ZIPCODE,b.ORD_COUNT from {{ ref('customer') }} a,{{ ref('orders_count_by_cust') }} b
where b.CUST_NAME=a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by b.ORD_COUNT