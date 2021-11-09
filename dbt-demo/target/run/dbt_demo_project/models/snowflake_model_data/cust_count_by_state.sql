

      create or replace transient table DEMO_DB.SALES_SCHEMA.cust_count_by_state  as
      (with store_sales as (
    select * from DEMO_DB.SALES_SCHEMA.customer
),
final as (select * from store_sales)
select CUSTOMER_STATE,count(*) as CUST_COUNT from final group by CUSTOMER_STATE
      );
    