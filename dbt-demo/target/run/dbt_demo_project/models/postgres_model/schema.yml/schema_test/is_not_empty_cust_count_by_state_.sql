select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "postgres"."dbt_test__audit"."is_not_empty_cust_count_by_state_"
    
      
    ) dbt_internal_test