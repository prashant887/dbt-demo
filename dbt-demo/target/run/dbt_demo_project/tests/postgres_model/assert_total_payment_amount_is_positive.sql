select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "postgres"."dbt_test__audit"."assert_total_payment_amount_is_positive"
    
      
    ) dbt_internal_test