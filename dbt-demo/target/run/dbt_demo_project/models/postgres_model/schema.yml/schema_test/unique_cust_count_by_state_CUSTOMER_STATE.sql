select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "postgres"."dbt_test__audit"."unique_cust_count_by_state_CUSTOMER_STATE"
    
      
    ) dbt_internal_test