

with validation(rw) as (

    select case when count(*)=0 then 1 else 0 end
    from "postgres"."dbtdemo"."cust_details_ord_counts"

)

select *
from validation where rw=1


