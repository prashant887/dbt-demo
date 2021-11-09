
    
    

select
    CUSTOMER_STATE,
    count(*) as n_records

from "postgres"."dbtdemo"."cust_count_by_state"
where CUSTOMER_STATE is not null
group by CUSTOMER_STATE
having count(*) > 1


