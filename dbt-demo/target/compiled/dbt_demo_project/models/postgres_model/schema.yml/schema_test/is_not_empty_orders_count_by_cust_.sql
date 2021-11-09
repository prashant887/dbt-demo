

with validation(rw) as (

    select case when count(*)=0 then 1 else 0 end
    from "postgres"."dbtdemo"."orders_count_by_cust"

)

select *
from validation where rw=1

