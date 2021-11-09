
  create or replace  view DEMO_DB.SALES_SCHEMA.cust_details_ord_counts  as (
    
select b.CUST_NAME,a.CUSTOMER_ZIPCODE,b.ORD_COUNT from DEMO_DB.SALES_SCHEMA.customer a,DEMO_DB.SALES_SCHEMA.orders_count_by_cust b
where b.CUST_NAME=a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by b.ORD_COUNT
  );
