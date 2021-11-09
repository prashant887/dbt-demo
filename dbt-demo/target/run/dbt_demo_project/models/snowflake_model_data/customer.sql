

  create  table "postgres"."dbtdemo"."customer__dbt_tmp"
  as (
    /**/


with store_sales as (
    select * from "DEMO_DB"."PUBLIC"."customers"
),
final as (select * from store_sales)
select * from final
  );