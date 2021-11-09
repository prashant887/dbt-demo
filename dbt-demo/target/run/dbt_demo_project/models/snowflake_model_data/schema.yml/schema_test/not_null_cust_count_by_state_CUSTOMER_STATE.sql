select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from DEMO_DB.SALES_SCHEMA.cust_count_by_state
where CUSTOMER_STATE is null



      
    ) dbt_internal_test