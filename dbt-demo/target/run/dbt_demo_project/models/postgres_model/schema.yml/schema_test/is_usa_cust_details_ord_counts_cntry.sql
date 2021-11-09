select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select * from "postgres"."dbtdemo"."cust_details_ord_counts" where cntry != 'USA'


      
    ) dbt_internal_test