{{ config(materialized='view') }}
with cust as (
    select * from {{ source('sales_schema', 'customer') }}
),ord as (
    select * from {{ source('sales_data', 'orders') }}
)


select a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME as CUST_NAME,count(*) as ord_count from cust a,ord b
where b.order_customer_id=a.customer_id group by a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by 2
