{{ config(materialized='view') }}
with cust as (
    select * from {{ source('dims_data', 'customers') }}
),ord as (
    select * from {{ source('facts_data', 'orders') }}
)


select a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME as CUST_NAME,count(*) as ord_count from cust a,ord b
where b.order_customer_id=a.customer_id group by a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by 2
