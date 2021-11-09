
  create view "postgres"."dbtdemo"."orders_count_by_cust__dbt_tmp" as (
    
with cust as (
    select * from "postgres"."dims"."customers"
),ord as (
    select * from "postgres"."facts"."orders"
)


select a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME as CUST_NAME,count(*) as ord_count from cust a,ord b
where b.order_customer_id=a.customer_id group by a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by 2
  );
