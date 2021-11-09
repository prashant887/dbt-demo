
  create or replace  view DEMO_DB.SALES_SCHEMA.sales_models  as (
    with store_sales as (
    select * from DEMO_DB.PUBLIC.customers
),
final as (select * from store_sales)
select * from final
  );
