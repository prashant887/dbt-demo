select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with validation(rw) as (

    select case when count(*)=0 then 1 else 0 end
    from "postgres"."dbtdemo"."cust_count_by_state"

)

select *
from validation where rw=1


      
    ) dbt_internal_test