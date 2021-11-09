
  create view "postgres"."dbtdemo"."cust_details_ord_counts copy__dbt_tmp" as (
    
select b.CUST_NAME,a.CUSTOMER_ZIPCODE,b.ORD_COUNT ,'USA' as CNTRY
from "postgres"."dims"."customers" a,"postgres"."dbtdemo"."orders_count_by_cust" b
where b.CUST_NAME=a.CUSTOMER_FNAME||' '||a.CUSTOMER_LNAME order by b.ORD_COUNT
  );
