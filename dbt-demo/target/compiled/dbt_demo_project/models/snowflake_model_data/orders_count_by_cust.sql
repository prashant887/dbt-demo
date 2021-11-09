
with cust as (
    select * from "DEMO_DB"."SALES_SCHEMA"."customer"
),ord as (
    select * from "DEMO_DB"."PUBLIC"."orders"
)


select a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME as CUST_NAME,count(*) as ord_count from cust a,ord b
where b.order_customer_id=a.customer_id group by a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by 2