select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "postgres"."dbt_test__audit"."is_usa_cust_details_ord_counts_cntry"
    
      
    ) dbt_internal_test